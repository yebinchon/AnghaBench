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
typedef  int /*<<< orphan*/  lambda_loop ;
typedef  int /*<<< orphan*/ * lambda_linear_expression ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,char) ; 

void
FUNC8 (FILE * outfile, lambda_loop loop, int depth,
		   int invariants, char start)
{
  int step;
  lambda_linear_expression expr;

  FUNC6 (loop);

  expr = FUNC1 (loop);
  step = FUNC3 (loop);
  FUNC5 (outfile, "  step size = %d \n", step);

  if (expr)
    {
      FUNC5 (outfile, "  linear offset: \n");
      FUNC7 (outfile, expr, depth, invariants,
				      start);
    }

  FUNC5 (outfile, "  lower bound: \n");
  for (expr = FUNC2 (loop); expr != NULL; expr = FUNC0 (expr))
    FUNC7 (outfile, expr, depth, invariants, start);
  FUNC5 (outfile, "  upper bound: \n");
  for (expr = FUNC4 (loop); expr != NULL; expr = FUNC0 (expr))
    FUNC7 (outfile, expr, depth, invariants, start);
}