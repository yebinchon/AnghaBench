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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  ABS 159 
#define  ASM_INPUT 158 
#define  ASM_OPERANDS 157 
#define  CC0 156 
#define  COMPARE 155 
#define  CONST 154 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  CONST_DOUBLE 153 
#define  CONST_INT 152 
#define  CONST_VECTOR 151 
#define  DIV 150 
#define  EQ 149 
#define  EXPR_LIST 148 
#define  FIX 147 
#define  GE 146 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  GT 145 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 144 
#define  LE 143 
#define  LT 142 
#define  LTGT 141 
#define  MEM 140 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
#define  MOD 139 
 unsigned int MTP_AFTER_MOVE ; 
 unsigned int MTP_UNALIGNED_MEMS ; 
#define  NE 138 
#define  NEG 137 
#define  PC 136 
#define  REG 135 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  SCRATCH 134 
 int /*<<< orphan*/  STRICT_ALIGNMENT ; 
#define  SUBREG 133 
#define  SYMBOL_REF 132 
#define  TRAP_IF 131 
#define  UDIV 130 
#define  UMOD 129 
#define  UNSPEC_VOLATILE 128 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 int FUNC12 (scalar_t__,int) ; 
 scalar_t__ const0_rtx ; 
 int flag_trapping_math ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14 (rtx x, unsigned flags)
{
  int i;
  enum rtx_code code;
  const char *fmt;
  bool unaligned_mems = (flags & MTP_UNALIGNED_MEMS) != 0;

  if (x == 0)
    return 0;
  code = FUNC1 (x);
  switch (code)
    {
      /* Handle these cases quickly.  */
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
    case CONST:
    case PC:
    case CC0:
    case REG:
    case SCRATCH:
      return 0;

    case ASM_INPUT:
    case UNSPEC_VOLATILE:
    case TRAP_IF:
      return 1;

    case ASM_OPERANDS:
      return FUNC8 (x);

      /* Memory ref can trap unless it's a static var or a stack slot.  */
    case MEM:
      if (/* MEM_NOTRAP_P only relates to the actual position of the memory
	     reference; moving it out of condition might cause its address
	     become invalid.  */
	  !(flags & MTP_AFTER_MOVE)
	  && FUNC7 (x)
	  && (!STRICT_ALIGNMENT || !unaligned_mems))
	return 0;
      return
	FUNC13 (FUNC10 (x, 0), FUNC2 (x), unaligned_mems);

      /* Division by a non-constant might trap.  */
    case DIV:
    case MOD:
    case UDIV:
    case UMOD:
      if (FUNC6 (FUNC2 (x)))
	return 1;
      if (FUNC9 (FUNC2 (x)))
	return flag_trapping_math;
      if (!FUNC0 (FUNC10 (x, 1)) || (FUNC10 (x, 1) == const0_rtx))
	return 1;
      break;

    case EXPR_LIST:
      /* An EXPR_LIST is used to represent a function call.  This
	 certainly may trap.  */
      return 1;

    case GE:
    case GT:
    case LE:
    case LT:
    case LTGT:
    case COMPARE:
      /* Some floating point comparisons may trap.  */
      if (!flag_trapping_math)
	break;
      /* ??? There is no machine independent way to check for tests that trap
	 when COMPARE is used, though many targets do make this distinction.
	 For instance, sparc uses CCFPE for compares which generate exceptions
	 and CCFP for compares which do not generate exceptions.  */
      if (FUNC5 (FUNC2 (x)))
	return 1;
      /* But often the compare has some CC mode, so check operand
	 modes as well.  */
      if (FUNC5 (FUNC2 (FUNC10 (x, 0)))
	  || FUNC5 (FUNC2 (FUNC10 (x, 1))))
	return 1;
      break;

    case EQ:
    case NE:
      if (FUNC6 (FUNC2 (x)))
	return 1;
      /* Often comparison is CC mode, so check operand modes.  */
      if (FUNC6 (FUNC2 (FUNC10 (x, 0)))
	  || FUNC6 (FUNC2 (FUNC10 (x, 1))))
	return 1;
      break;

    case FIX:
      /* Conversion of floating point might trap.  */
      if (flag_trapping_math && FUNC5 (FUNC2 (FUNC10 (x, 0))))
	return 1;
      break;

    case NEG:
    case ABS:
    case SUBREG:
      /* These operations don't trap even with floating point.  */
      break;

    default:
      /* Any floating arithmetic may trap.  */
      if (FUNC9 (FUNC2 (x))
	  && flag_trapping_math)
	return 1;
    }

  fmt = FUNC3 (code);
  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	{
	  if (FUNC14 (FUNC10 (x, i), flags))
	    return 1;
	}
      else if (fmt[i] == 'E')
	{
	  int j;
	  for (j = 0; j < FUNC12 (x, i); j++)
	    if (FUNC14 (FUNC11 (x, i, j), flags))
	      return 1;
	}
    }
  return 0;
}