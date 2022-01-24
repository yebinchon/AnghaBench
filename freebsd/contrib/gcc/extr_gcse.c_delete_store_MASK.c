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
struct ls_expr {scalar_t__ reaching_reg; int /*<<< orphan*/  pattern; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ls_expr*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct ls_expr*) ; 

__attribute__((used)) static void
FUNC6 (struct ls_expr * expr, basic_block bb)
{
  rtx reg, i, del;

  if (expr->reaching_reg == NULL_RTX)
    expr->reaching_reg = FUNC4 (FUNC2 (expr->pattern));

  reg = expr->reaching_reg;

  for (i = FUNC0 (expr); i; i = FUNC3 (i, 1))
    {
      del = FUNC3 (i, 0);
      if (FUNC1 (del) == bb)
	{
	  /* We know there is only one since we deleted redundant
	     ones during the available computation.  */
	  FUNC5 (reg, del, bb, expr);
	  break;
	}
    }
}