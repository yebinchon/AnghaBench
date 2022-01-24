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
typedef  int /*<<< orphan*/  lambda_linear_expression ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char) ; 

void
FUNC6 (FILE * outfile,
				lambda_linear_expression expr,
				int depth, int invariants, char start)
{
  FUNC4 (outfile, "\tLinear expression: ");
  FUNC5 (outfile, FUNC0 (expr), depth, start);
  FUNC4 (outfile, " constant: %d ", FUNC1 (expr));
  FUNC4 (outfile, "  invariants: ");
  FUNC5 (outfile, FUNC3 (expr),
			   invariants, 'A');
  FUNC4 (outfile, "  denominator: %d\n", FUNC2 (expr));
}