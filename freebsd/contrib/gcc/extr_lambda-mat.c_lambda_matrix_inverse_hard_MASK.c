#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int* lambda_vector ;
typedef  int** lambda_matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int**,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int**,int**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int**,int) ; 
 int** FUNC7 (int,int) ; 
 int FUNC8 (int*,int,int) ; 
 int FUNC9 (int*,int,int) ; 

__attribute__((used)) static int
FUNC10 (lambda_matrix mat, lambda_matrix inv, int n)
{
  lambda_vector row;
  lambda_matrix temp;
  int i, j;
  int determinant;

  temp = FUNC7 (n, n);
  FUNC5 (mat, temp, n, n);
  FUNC6 (inv, n);

  /* Reduce TEMP to a lower triangular form, applying the same operations on
     INV which starts as the identity matrix.  N is the number of rows and
     columns.  */
  for (j = 0; j < n; j++)
    {
      row = temp[j];

      /* Make every element in the current row positive.  */
      for (i = j; i < n; i++)
	if (row[i] < 0)
	  {
	    FUNC4 (temp, n, i);
	    FUNC4 (inv, n, i);
	  }

      /* Sweep the upper triangle.  Stop when only the diagonal element in the
	 current row is nonzero.  */
      while (FUNC8 (row, n, j + 1) < n)
	{
	  int min_col = FUNC9 (row, n, j);
	  FUNC2 (temp, n, j, min_col);
	  FUNC2 (inv, n, j, min_col);

	  for (i = j + 1; i < n; i++)
	    {
	      int factor;

	      factor = -1 * row[i];
	      if (row[j] != 1)
		factor /= row[j];

	      FUNC1 (temp, n, j, i, factor);
	      FUNC1 (inv, n, j, i, factor);
	    }
	}
    }

  /* Reduce TEMP from a lower triangular to the identity matrix.  Also compute
     the determinant, which now is simply the product of the elements on the
     diagonal of TEMP.  If one of these elements is 0, the matrix has 0 as an
     eigenvalue so it is singular and hence not invertible.  */
  determinant = 1;
  for (j = n - 1; j >= 0; j--)
    {
      int diagonal;

      row = temp[j];
      diagonal = row[j];

      /* The matrix must not be singular.  */
      FUNC0 (diagonal);

      determinant = determinant * diagonal;

      /* If the diagonal is not 1, then multiply the each row by the
         diagonal so that the middle number is now 1, rather than a
         rational.  */
      if (diagonal != 1)
	{
	  for (i = 0; i < j; i++)
	    FUNC3 (inv, n, i, diagonal);
	  for (i = j + 1; i < n; i++)
	    FUNC3 (inv, n, i, diagonal);

	  row[j] = diagonal = 1;
	}

      /* Sweep the lower triangle column wise.  */
      for (i = j - 1; i >= 0; i--)
	{
	  if (row[i])
	    {
	      int factor = -row[i];
	      FUNC1 (temp, n, j, i, factor);
	      FUNC1 (inv, n, j, i, factor);
	    }

	}
    }

  return determinant;
}