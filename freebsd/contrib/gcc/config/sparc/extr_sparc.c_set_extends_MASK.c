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

/* Variables and functions */
#define  AND 150 
#define  ASHIFTRT 149 
#define  CONST_DOUBLE 148 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 147 
#define  EQ 146 
#define  GE 145 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  GEU 144 
#define  GT 143 
#define  GTU 142 
#define  HIGH 141 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  IOR 140 
#define  LE 139 
#define  LEU 138 
#define  LO_SUM 137 
#define  LSHIFTRT 136 
#define  LT 135 
#define  LTU 134 
#define  MEM 133 
#define  NE 132 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  REG 131 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  SIGN_EXTEND 130 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
#define  XOR 129 
#define  ZERO_EXTEND 128 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (rtx insn)
{
  register rtx pat = FUNC4 (insn);

  switch (FUNC1 (FUNC5 (pat)))
    {
      /* Load and some shift instructions zero extend.  */
    case MEM:
    case ZERO_EXTEND:
      /* sethi clears the high bits */
    case HIGH:
      /* LO_SUM is used with sethi.  sethi cleared the high
	 bits and the values used with lo_sum are positive */
    case LO_SUM:
      /* Store flag stores 0 or 1 */
    case LT: case LTU:
    case GT: case GTU:
    case LE: case LEU:
    case GE: case GEU:
    case EQ:
    case NE:
      return 1;
    case AND:
      {
	rtx op0 = FUNC6 (FUNC5 (pat), 0);
	rtx op1 = FUNC6 (FUNC5 (pat), 1);
	if (FUNC1 (op1) == CONST_INT)
	  return FUNC3 (op1) >= 0;
	if (FUNC1 (op0) != REG)
	  return 0;
	if (FUNC7 (op0, insn) == 1)
	  return 1;
	return (FUNC1 (op1) == REG && FUNC7 (op1, insn) == 1);
      }
    case IOR:
    case XOR:
      {
	rtx op0 = FUNC6 (FUNC5 (pat), 0);
	rtx op1 = FUNC6 (FUNC5 (pat), 1);
	if (FUNC1 (op0) != REG || FUNC7 (op0, insn) <= 0)
	  return 0;
	if (FUNC1 (op1) == CONST_INT)
	  return FUNC3 (op1) >= 0;
	return (FUNC1 (op1) == REG && FUNC7 (op1, insn) == 1);
      }
    case LSHIFTRT:
      return FUNC2 (FUNC5 (pat)) == SImode;
      /* Positive integers leave the high bits zero.  */
    case CONST_DOUBLE:
      return ! (FUNC0 (FUNC5 (pat)) & 0x80000000);
    case CONST_INT:
      return ! (FUNC3 (FUNC5 (pat)) & 0x80000000);
    case ASHIFTRT:
    case SIGN_EXTEND:
      return - (FUNC2 (FUNC5 (pat)) == SImode);
    case REG:
      return FUNC7 (FUNC5 (pat), insn);
    default:
      return 0;
    }
}