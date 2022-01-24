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

/* Variables and functions */
 int** FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int**,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int**,int**,int,int) ; 
 int** FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int FUNC8 (int*,int,int) ; 
 int FUNC9 (int*,int,int) ; 
 int* FUNC10 (int) ; 

__attribute__((used)) static lambda_vector
FUNC11 (lambda_trans_matrix trans, lambda_vector stepsigns)
{
  lambda_matrix matrix, H;
  int size;
  lambda_vector newsteps;
  int i, j, factor, minimum_column;
  int temp;

  matrix = FUNC0 (trans);
  size = FUNC1 (trans);
  H = FUNC6 (size, size);

  newsteps = FUNC10 (size);
  FUNC7 (stepsigns, newsteps, size);

  FUNC5 (matrix, H, size, size);

  for (j = 0; j < size; j++)
    {
      lambda_vector row;
      row = H[j];
      for (i = j; i < size; i++)
	if (row[i] < 0)
	  FUNC4 (H, size, i);
      while (FUNC8 (row, size, j + 1) < size)
	{
	  minimum_column = FUNC9 (row, size, j);
	  FUNC3 (H, size, j, minimum_column);

	  temp = newsteps[j];
	  newsteps[j] = newsteps[minimum_column];
	  newsteps[minimum_column] = temp;

	  for (i = j + 1; i < size; i++)
	    {
	      factor = row[i] / row[j];
	      FUNC2 (H, size, j, i, -1 * factor);
	    }
	}
    }
  return newsteps;
}