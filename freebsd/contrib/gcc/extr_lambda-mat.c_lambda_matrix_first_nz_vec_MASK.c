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
typedef  int /*<<< orphan*/ ** lambda_matrix ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 

int
FUNC1 (lambda_matrix mat, int rowsize, int colsize,
			    int startrow)
{
  int j;
  bool found = false;

  for (j = startrow; (j < rowsize) && !found; j++)
    {
      if ((mat[j] != NULL)
	  && (FUNC0 (mat[j], colsize, startrow) < colsize))
	found = true;
    }

  if (found)
    return j - 1;
  return rowsize;
}