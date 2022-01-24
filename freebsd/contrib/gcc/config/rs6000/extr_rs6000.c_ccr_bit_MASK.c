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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CR0_REGNO ; 
 scalar_t__ FUNC1 (int) ; 
#define  EQ 141 
#define  GE 140 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  GEU 139 
#define  GT 138 
#define  GTU 137 
#define  LE 136 
#define  LEU 135 
#define  LT 134 
#define  LTU 133 
#define  NE 132 
#define  ORDERED 131 
 scalar_t__ REG ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  UNGE 130 
#define  UNLE 129 
#define  UNORDERED 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

int
FUNC9 (rtx op, int scc_p)
{
  enum rtx_code code = FUNC2 (op);
  enum machine_mode cc_mode;
  int cc_regnum;
  int base_bit;
  rtx reg;

  if (!FUNC0 (op))
    return -1;

  reg = FUNC5 (op, 0);

  FUNC6 (FUNC2 (reg) == REG && FUNC1 (FUNC4 (reg)));

  cc_mode = FUNC3 (reg);
  cc_regnum = FUNC4 (reg);
  base_bit = 4 * (cc_regnum - CR0_REGNO);

  FUNC8 (code, cc_mode);

  /* When generating a sCOND operation, only positive conditions are
     allowed.  */
  FUNC6 (!scc_p
	      || code == EQ || code == GT || code == LT || code == UNORDERED
	      || code == GTU || code == LTU);

  switch (code)
    {
    case NE:
      return scc_p ? base_bit + 3 : base_bit + 2;
    case EQ:
      return base_bit + 2;
    case GT:  case GTU:  case UNLE:
      return base_bit + 1;
    case LT:  case LTU:  case UNGE:
      return base_bit;
    case ORDERED:  case UNORDERED:
      return base_bit + 3;

    case GE:  case GEU:
      /* If scc, we will have done a cror to put the bit in the
	 unordered position.  So test that bit.  For integer, this is ! LT
	 unless this is an scc insn.  */
      return scc_p ? base_bit + 3 : base_bit;

    case LE:  case LEU:
      return scc_p ? base_bit + 3 : base_bit + 1;

    default:
      FUNC7 ();
    }
}