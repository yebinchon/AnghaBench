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
typedef  int /*<<< orphan*/  lambda_trans_matrix ;
typedef  int** lambda_matrix ;
typedef  int /*<<< orphan*/  lambda_loopnest ;
typedef  int /*<<< orphan*/  lambda_loop ;
typedef  int /*<<< orphan*/ * lambda_linear_expression ;
typedef  int /*<<< orphan*/  lambda_lattice ;

/* Variables and functions */
 int** FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int** FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int,int**,int**,int*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int**,int,int**,int,int**,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int**,int) ; 
 int /*<<< orphan*/  FUNC20 (int**,int**,int**,int,int,int) ; 
 int** FUNC21 (int,int) ; 
 int /*<<< orphan*/  FUNC22 (int**,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC23 (int*,int,int*,int,int*,int) ; 
 int* FUNC24 (int) ; 

__attribute__((used)) static lambda_loopnest
FUNC25 (lambda_loopnest nest,
				lambda_trans_matrix trans)
{
  lambda_matrix A, B, A1, B1;
  lambda_vector a, a1;
  lambda_matrix invertedtrans;
  int depth, invariants, size;
  int i, j;
  lambda_loop loop;
  lambda_linear_expression expression;
  lambda_lattice lattice;

  depth = FUNC11 (nest);
  invariants = FUNC12 (nest);

  /* Unfortunately, we can't know the number of constraints we'll have
     ahead of time, but this should be enough even in ridiculous loop nest
     cases. We must not go over this limit.  */
  A = FUNC21 (128, depth);
  B = FUNC21 (128, invariants);
  a = FUNC24 (128);

  A1 = FUNC21 (128, depth);
  B1 = FUNC21 (128, invariants);
  a1 = FUNC24 (128);

  /* Store the bounds in the equation matrix A, constant vector a, and
     invariant matrix B, so that we have Ax <= a + B.
     This requires a little equation rearranging so that everything is on the
     correct side of the inequality.  */
  size = 0;
  for (i = 0; i < depth; i++)
    {
      loop = FUNC13 (nest)[i];

      /* First we do the lower bound.  */
      if (FUNC9 (loop) > 0)
	expression = FUNC8 (loop);
      else
	expression = FUNC10 (loop);

      for (; expression != NULL; expression = FUNC7 (expression))
	{
	  /* Fill in the coefficient.  */
	  for (j = 0; j < i; j++)
	    A[size][j] = FUNC3 (expression)[j];

	  /* And the invariant coefficient.  */
	  for (j = 0; j < invariants; j++)
	    B[size][j] = FUNC6 (expression)[j];

	  /* And the constant.  */
	  a[size] = FUNC4 (expression);

	  /* Convert (2x+3y+2+b)/4 <= z to 2x+3y-4z <= -2-b.  IE put all
	     constants and single variables on   */
	  A[size][i] = -1 * FUNC5 (expression);
	  a[size] *= -1;
	  for (j = 0; j < invariants; j++)
	    B[size][j] *= -1;

	  size++;
	  /* Need to increase matrix sizes above.  */
	  FUNC16 (size <= 127);
	  
	}

      /* Then do the exact same thing for the upper bounds.  */
      if (FUNC9 (loop) > 0)
	expression = FUNC10 (loop);
      else
	expression = FUNC8 (loop);

      for (; expression != NULL; expression = FUNC7 (expression))
	{
	  /* Fill in the coefficient.  */
	  for (j = 0; j < i; j++)
	    A[size][j] = FUNC3 (expression)[j];

	  /* And the invariant coefficient.  */
	  for (j = 0; j < invariants; j++)
	    B[size][j] = FUNC6 (expression)[j];

	  /* And the constant.  */
	  a[size] = FUNC4 (expression);

	  /* Convert z <= (2x+3y+2+b)/4 to -2x-3y+4z <= 2+b.  */
	  for (j = 0; j < i; j++)
	    A[size][j] *= -1;
	  A[size][i] = FUNC5 (expression);
	  size++;
	  /* Need to increase matrix sizes above.  */
	  FUNC16 (size <= 127);

	}
    }

  /* Compute the lattice base x = base * y + origin, where y is the
     base space.  */
  lattice = FUNC17 (nest);

  /* Ax <= a + B then becomes ALy <= a+B - A*origin.  L is the lattice base  */

  /* A1 = A * L */
  FUNC20 (A, FUNC0 (lattice), A1, size, depth, depth);

  /* a1 = a - A * origin constant.  */
  FUNC22 (A, size, depth, FUNC1 (lattice), a1);
  FUNC23 (a, 1, a1, -1, a1, size);

  /* B1 = B - A * origin invariant.  */
  FUNC20 (A, FUNC2 (lattice), B1, size, depth,
		      invariants);
  FUNC18 (B, 1, B1, -1, B1, size, invariants);

  /* Now compute the auxiliary space bounds by first inverting U, multiplying
     it by A1, then performing Fourier-Motzkin.  */

  invertedtrans = FUNC21 (depth, depth);

  /* Compute the inverse of U.  */
  FUNC19 (FUNC14 (trans),
			 invertedtrans, depth);

  /* A = A1 inv(U).  */
  FUNC20 (A1, invertedtrans, A, size, depth, depth);

  return FUNC15 (size, depth, invariants,
					     A, B1, a1);
}