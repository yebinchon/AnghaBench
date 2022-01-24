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
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  ASHIFTRT 142 
 scalar_t__ CONST ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
#define  DIV 141 
 scalar_t__ FIRST_VIRTUAL_REGISTER ; 
#define  FIX 140 
#define  FLOAT 139 
#define  FLOAT_EXTEND 138 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  FLOAT_TRUNCATE 137 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ LAST_VIRTUAL_REGISTER ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int MINUS ; 
#define  MOD 136 
#define  MULT 135 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int PLUS ; 
 int /*<<< orphan*/  RDIV_EXPR ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
#define  SIGN_EXTEND 134 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
#define  TRUNCATE 133 
 int /*<<< orphan*/  TRUNC_DIV_EXPR ; 
 int /*<<< orphan*/  TRUNC_MOD_EXPR ; 
#define  UDIV 132 
#define  UMOD 131 
 scalar_t__ FUNC12 (scalar_t__) ; 
#define  UNSIGNED_FIX 130 
#define  UNSIGNED_FLOAT 129 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
#define  ZERO_EXTEND 128 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ pic_offset_table_rtx ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC27 (rtx value, rtx target)
{
  rtx op1, op2;
  /* Use subtarget as the target for operand 0 of a binary operation.  */
  rtx subtarget = FUNC24 (target);
  enum rtx_code code = FUNC3 (value);

  /* Check for subreg applied to an expression produced by loop optimizer.  */
  if (code == SUBREG
      && !FUNC9 (FUNC11 (value))
      && !FUNC7 (FUNC11 (value)))
    {
      value = FUNC26 (FUNC4 (value),
				   FUNC22 (FUNC4 (FUNC11 (value)),
					      FUNC27 (FUNC11 (value),
							     NULL_RTX)),
				   FUNC4 (FUNC11 (value)),
				   FUNC10 (value));
      code = FUNC3 (value);
    }

  /* Check for a PIC address load.  */
  if ((code == PLUS || code == MINUS)
      && FUNC13 (value, 0) == pic_offset_table_rtx
      && (FUNC3 (FUNC13 (value, 1)) == SYMBOL_REF
	  || FUNC3 (FUNC13 (value, 1)) == LABEL_REF
	  || FUNC3 (FUNC13 (value, 1)) == CONST))
    {
      if (!subtarget)
	subtarget = FUNC23 (FUNC4 (value));
      FUNC15 (subtarget, value);
      return subtarget;
    }

  if (FUNC0 (value))
    {
      op2 = FUNC13 (value, 1);
      if (!FUNC1 (op2) && !(FUNC9 (op2) && op2 != subtarget))
	subtarget = 0;
      if (code == MINUS && FUNC3 (op2) == CONST_INT)
	{
	  code = PLUS;
	  op2 = FUNC25 (FUNC4 (value), op2);
	}

      /* Check for an addition with OP2 a constant integer and our first
         operand a PLUS of a virtual register and something else.  In that
         case, we want to emit the sum of the virtual register and the
         constant first and then add the other value.  This allows virtual
         register instantiation to simply modify the constant rather than
         creating another one around this addition.  */
      if (code == PLUS && FUNC3 (op2) == CONST_INT
	  && FUNC3 (FUNC13 (value, 0)) == PLUS
	  && FUNC9 (FUNC13 (FUNC13 (value, 0), 0))
	  && FUNC8 (FUNC13 (FUNC13 (value, 0), 0)) >= FIRST_VIRTUAL_REGISTER
	  && FUNC8 (FUNC13 (FUNC13 (value, 0), 0)) <= LAST_VIRTUAL_REGISTER)
	{
	  rtx temp = FUNC20 (FUNC4 (value), code,
					  FUNC13 (FUNC13 (value, 0), 0), op2,
					  subtarget, 0, OPTAB_LIB_WIDEN);
	  return FUNC20 (FUNC4 (value), code, temp,
				      FUNC27 (FUNC13 (FUNC13 (value,
								 0), 1), 0),
				      target, 0, OPTAB_LIB_WIDEN);
	}

      op1 = FUNC27 (FUNC13 (value, 0), subtarget);
      op2 = FUNC27 (op2, NULL_RTX);
      switch (code)
	{
	case MULT:
	  return FUNC19 (FUNC4 (value), op1, op2, target, 1);
	case DIV:
	  if (!FUNC6 (FUNC4 (value)))
	    return FUNC20 (FUNC4 (value), code, op1, op2,
					target, 1, OPTAB_LIB_WIDEN);
	  else
	    return FUNC16 (0,
				  FUNC2 (FUNC4 (value))
				  ? RDIV_EXPR : TRUNC_DIV_EXPR,
				  FUNC4 (value), op1, op2, target, 0);
	  break;
	case MOD:
	  return FUNC16 (1, TRUNC_MOD_EXPR, FUNC4 (value), op1, op2,
				target, 0);
	  break;
	case UDIV:
	  return FUNC16 (0, TRUNC_DIV_EXPR, FUNC4 (value), op1, op2,
				target, 1);
	  break;
	case UMOD:
	  return FUNC16 (1, TRUNC_MOD_EXPR, FUNC4 (value), op1, op2,
				target, 1);
	  break;
	case ASHIFTRT:
	  return FUNC20 (FUNC4 (value), code, op1, op2,
				      target, 0, OPTAB_LIB_WIDEN);
	  break;
	default:
	  return FUNC20 (FUNC4 (value), code, op1, op2,
				      target, 1, OPTAB_LIB_WIDEN);
	}
    }
  if (FUNC12 (value))
    {
      if (!target)
	target = FUNC23 (FUNC4 (value));
      op1 = FUNC27 (FUNC13 (value, 0), NULL_RTX);
      switch (code)
	{
	case ZERO_EXTEND:
	case SIGN_EXTEND:
	case TRUNCATE:
	case FLOAT_EXTEND:
	case FLOAT_TRUNCATE:
	  FUNC14 (target, op1, code == ZERO_EXTEND);
	  return target;

	case FIX:
	case UNSIGNED_FIX:
	  FUNC17 (target, op1, code == UNSIGNED_FIX);
	  return target;

	case FLOAT:
	case UNSIGNED_FLOAT:
	  FUNC18 (target, op1, code == UNSIGNED_FLOAT);
	  return target;

	default:
	  return FUNC21 (FUNC4 (value), code, op1, target, 0);
	}
    }

#ifdef INSN_SCHEDULING
  /* On machines that have insn scheduling, we want all memory reference to be
     explicit, so we need to deal with such paradoxical SUBREGs.  */
  if (GET_CODE (value) == SUBREG && MEM_P (SUBREG_REG (value))
      && (GET_MODE_SIZE (GET_MODE (value))
	  > GET_MODE_SIZE (GET_MODE (SUBREG_REG (value)))))
    value
      = simplify_gen_subreg (GET_MODE (value),
			     force_reg (GET_MODE (SUBREG_REG (value)),
					force_operand (SUBREG_REG (value),
						       NULL_RTX)),
			     GET_MODE (SUBREG_REG (value)),
			     SUBREG_BYTE (value));
#endif

  return value;
}