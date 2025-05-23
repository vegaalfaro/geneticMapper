% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rename_geno_matrix.R
\name{rename_geno_matrix}
\alias{rename_geno_matrix}
\title{Rename Parents, F1, and F2 Individuals in a Genotype Matrix}
\usage{
rename_geno_matrix(geno, parent1, parent2, f1)
}
\arguments{
\item{geno}{A genotype matrix or data frame where:
\itemize{
\item Rows represent genetic markers.
\item Columns represent individuals (parents, F1, and F2).
}}

\item{parent1}{Character. The column name corresponding to the first parent.}

\item{parent2}{Character. The column name corresponding to the second parent.}

\item{f1}{Character vector. The column names corresponding to F1 individuals.}
}
\value{
A genotype matrix with updated column names:
\itemize{
\item \code{"P1"} for \code{parent1}.
\item \code{"P2"} for \code{parent2}.
\item \code{"F1.1"}, \code{"F1.2"}, ... for F1 individuals.
\item \code{"F2.1"}, \code{"F2.2"}, ... for all other individuals.
}
}
\description{
This function standardizes the column names of a genotype matrix by renaming
parental genotypes (\code{P1}, \code{P2}), F1 individuals (\code{F1.1}, \code{F1.2}, ...), and
F2 individuals (\code{F2.1}, \code{F2.2}, ...). This renaming helps reduce the name size
and exchange it with a consistent labeling system for dendrogram visualization
constrains
}
\examples{
# Example genotype matrix
geno_matrix <- matrix(sample(0:2, 30, replace = TRUE),
                      nrow = 5, ncol = 6,
                      dimnames = list(
                        paste0("Marker", 1:5),
                        c("ParentA-Plate1-WellAH", "ParentB-Plate2-WellAJ",
                        "F1abc", "F1bcd", "Ind1", "Ind2")
                      ))

# Rename genotype matrix
renamed_geno <- rename_geno_matrix(geno_matrix,
                                    parent1 = "ParentA",
                                    parent2 = "ParentB",
                                    f1 = c("F1abc", "F1bcd"))

# Print renamed genotype matrix
print(colnames(renamed_geno))

}
