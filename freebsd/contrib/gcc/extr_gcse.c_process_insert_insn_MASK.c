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
struct expr {int /*<<< orphan*/  expr; int /*<<< orphan*/  reaching_reg; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static rtx
FUNC11 (struct expr *expr)
{
  rtx reg = expr->reaching_reg;
  rtx exp = FUNC1 (expr->expr);
  rtx pat;

  FUNC10 ();

  /* If the expression is something that's an operand, like a constant,
     just copy it to a register.  */
  if (FUNC7 (exp, FUNC0 (reg)))
    FUNC3 (reg, exp);

  /* Otherwise, make a new insn to compute this expression and make sure the
     insn will be recognized (this also adds any needed CLOBBERs).  Copy the
     expression to make sure we don't have any sharing issues.  */
  else
    {
      rtx insn = FUNC2 (FUNC6 (VOIDmode, reg, exp));

      if (FUNC9 (insn))
	FUNC5 ();
    }
  

  pat = FUNC8 ();
  FUNC4 ();

  return pat;
}