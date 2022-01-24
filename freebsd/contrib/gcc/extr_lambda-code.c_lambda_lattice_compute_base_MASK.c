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
typedef  int** lambda_matrix ;
typedef  int /*<<< orphan*/  lambda_loopnest ;
typedef  int lambda_loop ;
typedef  int /*<<< orphan*/  lambda_linear_expression ;
typedef  int /*<<< orphan*/  lambda_lattice ;

/* Variables and functions */
 int** FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__** FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static lambda_lattice
FUNC15 (lambda_loopnest nest)
{
  lambda_lattice ret;
  int depth, invariants;
  lambda_matrix base;

  int i, j, step;
  lambda_loop loop;
  lambda_linear_expression expression;

  depth = FUNC10 (nest);
  invariants = FUNC11 (nest);

  ret = FUNC14 (depth, invariants);
  base = FUNC0 (ret);
  for (i = 0; i < depth; i++)
    {
      loop = FUNC12 (nest)[i];
      FUNC13 (loop);
      step = FUNC9 (loop);
      /* If we have a step of 1, then the base is one, and the
         origin and invariant coefficients are 0.  */
      if (step == 1)
	{
	  for (j = 0; j < depth; j++)
	    base[i][j] = 0;
	  base[i][i] = 1;
	  FUNC1 (ret)[i] = 0;
	  for (j = 0; j < invariants; j++)
	    FUNC2 (ret)[i][j] = 0;
	}
      else
	{
	  /* Otherwise, we need the lower bound expression (which must
	     be an affine function)  to determine the base.  */
	  expression = FUNC8 (loop);
	  FUNC13 (expression && !FUNC7 (expression) 
		      && FUNC5 (expression) == 1);

	  /* The lower triangular portion of the base is going to be the
	     coefficient times the step */
	  for (j = 0; j < i; j++)
	    base[i][j] = FUNC3 (expression)[j]
	      * FUNC9 (FUNC12 (nest)[j]);
	  base[i][i] = step;
	  for (j = i + 1; j < depth; j++)
	    base[i][j] = 0;

	  /* Origin for this loop is the constant of the lower bound
	     expression.  */
	  FUNC1 (ret)[i] = FUNC4 (expression);

	  /* Coefficient for the invariants are equal to the invariant
	     coefficients in the expression.  */
	  for (j = 0; j < invariants; j++)
	    FUNC2 (ret)[i][j] =
	      FUNC6 (expression)[j];
	}
    }
  return ret;
}