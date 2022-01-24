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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int GE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int GEU ; 
#define  GT 131 
#define  GTU 130 
#define  LE 129 
#define  LEU 128 
 int LT ; 
 int LTU ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * cmp_operands ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (rtx *operands)
{
  rtx op0, op1;
  enum rtx_code cmp_code = FUNC0 (operands[0]);
  enum machine_mode mode = FUNC1 (cmp_operands[0]);

  /* MIPS conditional trap machine instructions don't have GT or LE
     flavors, so we must invert the comparison and convert to LT and
     GE, respectively.  */
  switch (cmp_code)
    {
    case GT: cmp_code = LT; break;
    case LE: cmp_code = GE; break;
    case GTU: cmp_code = LTU; break;
    case LEU: cmp_code = GEU; break;
    default: break;
    }
  if (cmp_code == FUNC0 (operands[0]))
    {
      op0 = cmp_operands[0];
      op1 = cmp_operands[1];
    }
  else
    {
      op0 = cmp_operands[1];
      op1 = cmp_operands[0];
    }
  op0 = FUNC4 (mode, op0);
  if (!FUNC2 (op1, mode))
    op1 = FUNC4 (mode, op1);

  FUNC3 (FUNC5 (VOIDmode,
			      FUNC6 (cmp_code, mode, op0, op1),
			      operands[1]));
}