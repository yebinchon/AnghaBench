#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* signed_type ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
#define  ABS_EXPR 145 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  CEIL_DIV_EXPR 144 
 int CEIL_MOD_EXPR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
#define  CONVERT_EXPR 143 
#define  EXACT_DIV_EXPR 142 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
#define  FLOOR_DIV_EXPR 141 
 int FLOOR_MOD_EXPR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  INTEGER_CST 140 
 int const INTEGER_TYPE ; 
#define  LSHIFT_EXPR 139 
#define  MAX_EXPR 138 
#define  MINUS_EXPR 137 
#define  MIN_EXPR 136 
#define  MULT_EXPR 135 
#define  NEGATE_EXPR 134 
#define  NON_LVALUE_EXPR 133 
#define  NOP_EXPR 132 
 scalar_t__ NULL_TREE ; 
#define  PLUS_EXPR 131 
#define  ROUND_DIV_EXPR 130 
 int ROUND_MOD_EXPR ; 
#define  RSHIFT_EXPR 129 
 int const FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
#define  TRUNC_DIV_EXPR 128 
 int TRUNC_MOD_EXPR ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (int const,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__,int,scalar_t__,int*) ; 
 scalar_t__ FUNC22 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ size_one_node ; 
 scalar_t__ FUNC29 (scalar_t__) ; 
 scalar_t__ tcc_binary ; 
 scalar_t__ tcc_unary ; 
 int FUNC30 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC31 (tree t, tree c, enum tree_code code, tree wide_type,
		  bool *strict_overflow_p)
{
  tree type = FUNC11 (t);
  enum tree_code tcode = FUNC4 (t);
  tree ctype = (wide_type != 0 && (FUNC3 (FUNC13 (wide_type))
				   > FUNC3 (FUNC13 (type)))
		? wide_type : type);
  tree t1, t2;
  int same_p = tcode == code;
  tree op0 = NULL_TREE, op1 = NULL_TREE;
  bool sub_strict_overflow_p;

  /* Don't deal with constants of zero here; they confuse the code below.  */
  if (FUNC25 (c))
    return NULL_TREE;

  if (FUNC5 (tcode) == tcc_unary)
    op0 = FUNC9 (t, 0);

  if (FUNC5 (tcode) == tcc_binary)
    op0 = FUNC9 (t, 0), op1 = FUNC9 (t, 1);

  /* Note that we need not handle conditional operations here since fold
     already handles those cases.  So just do arithmetic here.  */
  switch (tcode)
    {
    case INTEGER_CST:
      /* For a constant, we can always simplify if we are a multiply
	 or (for divide and modulus) if it is a multiple of our constant.  */
      if (code == MULT_EXPR
	  || FUNC25 (FUNC20 (TRUNC_MOD_EXPR, t, c, 0)))
	return FUNC20 (code, FUNC24 (ctype, t),
			    FUNC24 (ctype, c), 0);
      break;

    case CONVERT_EXPR:  case NON_LVALUE_EXPR:  case NOP_EXPR:
      /* If op0 is an expression ...  */
      if ((FUNC1 (op0)
	   || FUNC18 (op0)
	   || FUNC0 (op0)
	   || FUNC2 (op0))
	  /* ... and is unsigned, and its type is smaller than ctype,
	     then we cannot pass through as widening.  */
	  && ((FUNC17 (FUNC11 (op0))
	       && ! (FUNC4 (FUNC11 (op0)) == INTEGER_TYPE
		     && FUNC12 (FUNC11 (op0)))
	       && (FUNC3 (FUNC13 (ctype))
	           > FUNC3 (FUNC13 (FUNC11 (op0)))))
	      /* ... or this is a truncation (t is narrower than op0),
		 then we cannot pass through this narrowing.  */
	      || (FUNC3 (FUNC13 (type))
		  < FUNC3 (FUNC13 (FUNC11 (op0))))
	      /* ... or signedness changes for division or modulus,
		 then we cannot pass through this conversion.  */
	      || (code != MULT_EXPR
		  && (FUNC17 (ctype)
		      != FUNC17 (FUNC11 (op0))))))
	break;

      /* Pass the constant down and see if we can make a simplification.  If
	 we can, replace this expression with the inner simplification for
	 possible later conversion to our or some other type.  */
      if ((t2 = FUNC24 (FUNC11 (op0), c)) != 0
	  && FUNC4 (t2) == INTEGER_CST
	  && ! FUNC6 (t2)
	  && (0 != (t1 = FUNC21 (op0, t2, code,
					 code == MULT_EXPR
					 ? ctype : NULL_TREE,
					 strict_overflow_p))))
	return t1;
      break;

    case ABS_EXPR:
      /* If widening the type changes it from signed to unsigned, then we
         must avoid building ABS_EXPR itself as unsigned.  */
      if (FUNC17 (ctype) && !FUNC17 (type))
        {
          tree cstype = (*lang_hooks.types.signed_type) (ctype);
          if ((t1 = FUNC21 (op0, c, code, cstype, strict_overflow_p))
	      != 0)
            {
              t1 = FUNC22 (tcode, cstype, FUNC24 (cstype, t1));
              return FUNC24 (ctype, t1);
            }
          break;
        }
      /* If the constant is negative, we cannot simplify this.  */
      if (FUNC30 (c) == -1)
	break;
      /* FALLTHROUGH */
    case NEGATE_EXPR:
      if ((t1 = FUNC21 (op0, c, code, wide_type, strict_overflow_p))
	  != 0)
	return FUNC22 (tcode, ctype, FUNC24 (ctype, t1));
      break;

    case MIN_EXPR:  case MAX_EXPR:
      /* If widening the type changes the signedness, then we can't perform
	 this optimization as that changes the result.  */
      if (FUNC17 (ctype) != FUNC17 (type))
	break;

      /* MIN (a, b) / 5 -> MIN (a / 5, b / 5)  */
      sub_strict_overflow_p = false;
      if ((t1 = FUNC21 (op0, c, code, wide_type,
				&sub_strict_overflow_p)) != 0
	  && (t2 = FUNC21 (op1, c, code, wide_type,
				   &sub_strict_overflow_p)) != 0)
	{
	  if (FUNC30 (c) < 0)
	    tcode = (tcode == MIN_EXPR ? MAX_EXPR : MIN_EXPR);
	  if (sub_strict_overflow_p)
	    *strict_overflow_p = true;
	  return FUNC23 (tcode, ctype, FUNC24 (ctype, t1),
			      FUNC24 (ctype, t2));
	}
      break;

    case LSHIFT_EXPR:  case RSHIFT_EXPR:
      /* If the second operand is constant, this is a multiplication
	 or floor division, by a power of two, so we can treat it that
	 way unless the multiplier or divisor overflows.  Signed
	 left-shift overflow is implementation-defined rather than
	 undefined in C90, so do not convert signed left shift into
	 multiplication.  */
      if (FUNC4 (op1) == INTEGER_CST
	  && (tcode == RSHIFT_EXPR || FUNC17 (FUNC11 (op0)))
	  /* const_binop may not detect overflow correctly,
	     so check for it explicitly here.  */
	  && FUNC16 (FUNC11 (size_one_node)) > FUNC8 (op1)
	  && FUNC7 (op1) == 0
	  && 0 != (t1 = FUNC24 (ctype,
				      FUNC20 (LSHIFT_EXPR,
						   size_one_node,
						   op1, 0)))
	  && ! FUNC10 (t1))
	return FUNC21 (FUNC19 (tcode == LSHIFT_EXPR
				       ? MULT_EXPR : FLOOR_DIV_EXPR,
				       ctype, FUNC24 (ctype, op0), t1),
			       c, code, wide_type, strict_overflow_p);
      break;

    case PLUS_EXPR:  case MINUS_EXPR:
      /* See if we can eliminate the operation on both sides.  If we can, we
	 can return a new PLUS or MINUS.  If we can't, the only remaining
	 cases where we can do anything are if the second operand is a
	 constant.  */
      sub_strict_overflow_p = false;
      t1 = FUNC21 (op0, c, code, wide_type, &sub_strict_overflow_p);
      t2 = FUNC21 (op1, c, code, wide_type, &sub_strict_overflow_p);
      if (t1 != 0 && t2 != 0
	  && (code == MULT_EXPR
	      /* If not multiplication, we can only do this if both operands
		 are divisible by c.  */
	      || (FUNC26 (ctype, op0, c)
	          && FUNC26 (ctype, op1, c))))
	{
	  if (sub_strict_overflow_p)
	    *strict_overflow_p = true;
	  return FUNC23 (tcode, ctype, FUNC24 (ctype, t1),
			      FUNC24 (ctype, t2));
	}

      /* If this was a subtraction, negate OP1 and set it to be an addition.
	 This simplifies the logic below.  */
      if (tcode == MINUS_EXPR)
	tcode = PLUS_EXPR, op1 = FUNC27 (op1);

      if (FUNC4 (op1) != INTEGER_CST)
	break;

      /* If either OP1 or C are negative, this optimization is not safe for
	 some of the division and remainder types while for others we need
	 to change the code.  */
      if (FUNC30 (op1) < 0 || FUNC30 (c) < 0)
	{
	  if (code == CEIL_DIV_EXPR)
	    code = FLOOR_DIV_EXPR;
	  else if (code == FLOOR_DIV_EXPR)
	    code = CEIL_DIV_EXPR;
	  else if (code != MULT_EXPR
		   && code != CEIL_MOD_EXPR && code != FLOOR_MOD_EXPR)
	    break;
	}

      /* If it's a multiply or a division/modulus operation of a multiple
         of our constant, do the operation and verify it doesn't overflow.  */
      if (code == MULT_EXPR
	  || FUNC25 (FUNC20 (TRUNC_MOD_EXPR, op1, c, 0)))
	{
	  op1 = FUNC20 (code, FUNC24 (ctype, op1),
			     FUNC24 (ctype, c), 0);
	  /* We allow the constant to overflow with wrapping semantics.  */
	  if (op1 == 0
	      || (FUNC10 (op1) && !FUNC15 (ctype)))
	    break;
	}
      else
	break;

      /* If we have an unsigned type is not a sizetype, we cannot widen
	 the operation since it will change the result if the original
	 computation overflowed.  */
      if (FUNC17 (ctype)
	  && ! (FUNC4 (ctype) == INTEGER_TYPE && FUNC12 (ctype))
	  && ctype != type)
	break;

      /* If we were able to eliminate our operation from the first side,
	 apply our operation to the second side and reform the PLUS.  */
      if (t1 != 0 && (FUNC4 (t1) != code || code == MULT_EXPR))
	return FUNC23 (tcode, ctype, FUNC24 (ctype, t1), op1);

      /* The last case is if we are a multiply.  In that case, we can
	 apply the distributive law to commute the multiply and addition
	 if the multiplication of the constants doesn't overflow.  */
      if (code == MULT_EXPR)
	return FUNC23 (tcode, ctype,
			    FUNC23 (code, ctype,
					 FUNC24 (ctype, op0),
					 FUNC24 (ctype, c)),
			    op1);

      break;

    case MULT_EXPR:
      /* We have a special case here if we are doing something like
	 (C * 8) % 4 since we know that's zero.  */
      if ((code == TRUNC_MOD_EXPR || code == CEIL_MOD_EXPR
	   || code == FLOOR_MOD_EXPR || code == ROUND_MOD_EXPR)
	  && FUNC4 (FUNC9 (t, 1)) == INTEGER_CST
	  && FUNC25 (FUNC20 (TRUNC_MOD_EXPR, op1, c, 0)))
	return FUNC28 (type, integer_zero_node, op0);

      /* ... fall through ...  */

    case TRUNC_DIV_EXPR:  case CEIL_DIV_EXPR:  case FLOOR_DIV_EXPR:
    case ROUND_DIV_EXPR:  case EXACT_DIV_EXPR:
      /* If we can extract our operation from the LHS, do so and return a
	 new operation.  Likewise for the RHS from a MULT_EXPR.  Otherwise,
	 do something only if the second operand is a constant.  */
      if (same_p
	  && (t1 = FUNC21 (op0, c, code, wide_type,
				   strict_overflow_p)) != 0)
	return FUNC23 (tcode, ctype, FUNC24 (ctype, t1),
			    FUNC24 (ctype, op1));
      else if (tcode == MULT_EXPR && code == MULT_EXPR
	       && (t1 = FUNC21 (op1, c, code, wide_type,
					strict_overflow_p)) != 0)
	return FUNC23 (tcode, ctype, FUNC24 (ctype, op0),
			    FUNC24 (ctype, t1));
      else if (FUNC4 (op1) != INTEGER_CST)
	return 0;

      /* If these are the same operation types, we can associate them
	 assuming no overflow.  */
      if (tcode == code
	  && 0 != (t1 = FUNC20 (MULT_EXPR, FUNC24 (ctype, op1),
				     FUNC24 (ctype, c), 0))
	  && ! FUNC10 (t1))
	return FUNC23 (tcode, ctype, FUNC24 (ctype, op0), t1);

      /* If these operations "cancel" each other, we have the main
	 optimizations of this pass, which occur when either constant is a
	 multiple of the other, in which case we replace this with either an
	 operation or CODE or TCODE.

	 If we have an unsigned type that is not a sizetype, we cannot do
	 this since it will change the result if the original computation
	 overflowed.  */
      if ((FUNC14 (ctype)
	   || (FUNC4 (ctype) == INTEGER_TYPE && FUNC12 (ctype)))
	  && ((code == MULT_EXPR && tcode == EXACT_DIV_EXPR)
	      || (tcode == MULT_EXPR
		  && code != TRUNC_MOD_EXPR && code != CEIL_MOD_EXPR
		  && code != FLOOR_MOD_EXPR && code != ROUND_MOD_EXPR)))
	{
	  if (FUNC25 (FUNC20 (TRUNC_MOD_EXPR, op1, c, 0)))
	    {
	      if (FUNC14 (ctype))
		*strict_overflow_p = true;
	      return FUNC23 (tcode, ctype, FUNC24 (ctype, op0),
				  FUNC24 (ctype,
						FUNC20 (TRUNC_DIV_EXPR,
							     op1, c, 0)));
	    }
	  else if (FUNC25 (FUNC20 (TRUNC_MOD_EXPR, c, op1, 0)))
	    {
	      if (FUNC14 (ctype))
		*strict_overflow_p = true;
	      return FUNC23 (code, ctype, FUNC24 (ctype, op0),
				  FUNC24 (ctype,
						FUNC20 (TRUNC_DIV_EXPR,
							     c, op1, 0)));
	    }
	}
      break;

    default:
      break;
    }

  return 0;
}