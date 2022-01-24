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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EQ_EXPR ; 
#define  GE_EXPR 131 
#define  GT_EXPR 130 
 scalar_t__ INTEGER_CST ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
#define  LE_EXPR 129 
#define  LT_EXPR 128 
 int NE_EXPR ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  extra_warnings ; 
 scalar_t__ FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__,int*) ; 
 int /*<<< orphan*/  in_system_header ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 scalar_t__ truthvalue_false_node ; 
 scalar_t__ truthvalue_true_node ; 
 scalar_t__ truthvalue_type_node ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC28 (tree *op0_ptr, tree *op1_ptr, tree *restype_ptr,
		 enum tree_code *rescode_ptr)
{
  tree type;
  tree op0 = *op0_ptr;
  tree op1 = *op1_ptr;
  int unsignedp0, unsignedp1;
  int real1, real2;
  tree primop0, primop1;
  enum tree_code code = *rescode_ptr;

  /* Throw away any conversions to wider types
     already present in the operands.  */

  primop0 = FUNC24 (op0, &unsignedp0);
  primop1 = FUNC24 (op1, &unsignedp1);

  /* Handle the case that OP0 does not *contain* a conversion
     but it *requires* conversion to FINAL_TYPE.  */

  if (op0 == primop0 && FUNC10 (op0) != *restype_ptr)
    unsignedp0 = FUNC15 (FUNC10 (op0));
  if (op1 == primop1 && FUNC10 (op1) != *restype_ptr)
    unsignedp1 = FUNC15 (FUNC10 (op1));

  /* If one of the operands must be floated, we cannot optimize.  */
  real1 = FUNC3 (FUNC10 (primop0)) == REAL_TYPE;
  real2 = FUNC3 (FUNC10 (primop1)) == REAL_TYPE;

  /* If first arg is constant, swap the args (changing operation
     so value is preserved), for canonicalization.  Don't do this if
     the second arg is 0.  */

  if (FUNC4 (primop0)
      && !FUNC25 (primop1) && !FUNC26 (primop1))
    {
      tree tem = primop0;
      int temi = unsignedp0;
      primop0 = primop1;
      primop1 = tem;
      tem = op0;
      op0 = op1;
      op1 = tem;
      *op0_ptr = op0;
      *op1_ptr = op1;
      unsignedp0 = unsignedp1;
      unsignedp1 = temi;
      temi = real1;
      real1 = real2;
      real2 = temi;

      switch (code)
	{
	case LT_EXPR:
	  code = GT_EXPR;
	  break;
	case GT_EXPR:
	  code = LT_EXPR;
	  break;
	case LE_EXPR:
	  code = GE_EXPR;
	  break;
	case GE_EXPR:
	  code = LE_EXPR;
	  break;
	default:
	  break;
	}
      *rescode_ptr = code;
    }

  /* If comparing an integer against a constant more bits wide,
     maybe we can deduce a value of 1 or 0 independent of the data.
     Or else truncate the constant now
     rather than extend the variable at run time.

     This is only interesting if the constant is the wider arg.
     Also, it is not safe if the constant is unsigned and the
     variable arg is signed, since in this case the variable
     would be sign-extended and then regarded as unsigned.
     Our technique fails in this case because the lowest/highest
     possible unsigned results don't follow naturally from the
     lowest/highest possible values of the variable operand.
     For just EQ_EXPR and NE_EXPR there is another technique that
     could be used: see if the constant can be faithfully represented
     in the other operand's type, by truncating it and reextending it
     and see if that preserves the constant's value.  */

  if (!real1 && !real2
      && FUNC3 (primop1) == INTEGER_CST
      && FUNC14 (FUNC10 (primop0)) < FUNC14 (*restype_ptr))
    {
      int min_gt, max_gt, min_lt, max_lt;
      tree maxval, minval;
      /* 1 if comparison is nominally unsigned.  */
      int unsignedp = FUNC15 (*restype_ptr);
      tree val;

      type = FUNC18 (unsignedp0,
					       FUNC10 (primop0));

      maxval = FUNC11 (type);
      minval = FUNC12 (type);

      if (unsignedp && !unsignedp0)
	*restype_ptr = FUNC19 (*restype_ptr);

      if (FUNC10 (primop1) != *restype_ptr)
	{
	  /* Convert primop1 to target type, but do not introduce
	     additional overflow.  We know primop1 is an int_cst.  */
	  tree tmp = FUNC17 (*restype_ptr,
					 FUNC7 (primop1),
					 FUNC6 (primop1));

	  primop1 = FUNC23 (tmp, 0, FUNC8 (primop1),
				    FUNC5 (primop1));
	}
      if (type != *restype_ptr)
	{
	  minval = FUNC22 (*restype_ptr, minval);
	  maxval = FUNC22 (*restype_ptr, maxval);
	}

      if (unsignedp && unsignedp0)
	{
	  min_gt = FUNC2 (primop1, minval);
	  max_gt = FUNC2 (primop1, maxval);
	  min_lt = FUNC2 (minval, primop1);
	  max_lt = FUNC2 (maxval, primop1);
	}
      else
	{
	  min_gt = FUNC1 (primop1, minval);
	  max_gt = FUNC1 (primop1, maxval);
	  min_lt = FUNC1 (minval, primop1);
	  max_lt = FUNC1 (maxval, primop1);
	}

      val = 0;
      /* This used to be a switch, but Genix compiler can't handle that.  */
      if (code == NE_EXPR)
	{
	  if (max_lt || min_gt)
	    val = truthvalue_true_node;
	}
      else if (code == EQ_EXPR)
	{
	  if (max_lt || min_gt)
	    val = truthvalue_false_node;
	}
      else if (code == LT_EXPR)
	{
	  if (max_lt)
	    val = truthvalue_true_node;
	  if (!min_lt)
	    val = truthvalue_false_node;
	}
      else if (code == GT_EXPR)
	{
	  if (min_gt)
	    val = truthvalue_true_node;
	  if (!max_gt)
	    val = truthvalue_false_node;
	}
      else if (code == LE_EXPR)
	{
	  if (!max_gt)
	    val = truthvalue_true_node;
	  if (min_gt)
	    val = truthvalue_false_node;
	}
      else if (code == GE_EXPR)
	{
	  if (!min_lt)
	    val = truthvalue_true_node;
	  if (max_lt)
	    val = truthvalue_false_node;
	}

      /* If primop0 was sign-extended and unsigned comparison specd,
	 we did a signed comparison above using the signed type bounds.
	 But the comparison we output must be unsigned.

	 Also, for inequalities, VAL is no good; but if the signed
	 comparison had *any* fixed result, it follows that the
	 unsigned comparison just tests the sign in reverse
	 (positive values are LE, negative ones GE).
	 So we can generate an unsigned comparison
	 against an extreme value of the signed type.  */

      if (unsignedp && !unsignedp0)
	{
	  if (val != 0)
	    switch (code)
	      {
	      case LT_EXPR:
	      case GE_EXPR:
		primop1 = FUNC12 (type);
		val = 0;
		break;

	      case LE_EXPR:
	      case GT_EXPR:
		primop1 = FUNC11 (type);
		val = 0;
		break;

	      default:
		break;
	      }
	  type = FUNC20 (type);
	}

      if (FUNC3 (primop0) != INTEGER_CST)
	{
	  if (val == truthvalue_false_node)
	    FUNC27 (0, "comparison is always false due to limited range of data type");
	  if (val == truthvalue_true_node)
	    FUNC27 (0, "comparison is always true due to limited range of data type");
	}

      if (val != 0)
	{
	  /* Don't forget to evaluate PRIMOP0 if it has side effects.  */
	  if (FUNC9 (primop0))
	    return FUNC16 (COMPOUND_EXPR, FUNC10 (val), primop0, val);
	  return val;
	}

      /* Value is not predetermined, but do the comparison
	 in the type of the operand that is not constant.
	 TYPE is already properly set.  */
    }

  /* If either arg is decimal float and the other is float, find the
     proper common type to use for comparison.  */
  else if (real1 && real2
	   && (FUNC0 (FUNC13 (FUNC10 (primop0)))
	       || FUNC0 (FUNC13 (FUNC10 (primop1)))))
    type = FUNC21 (FUNC10 (primop0), FUNC10 (primop1));

  else if (real1 && real2
	   && (FUNC14 (FUNC10 (primop0))
	       == FUNC14 (FUNC10 (primop1))))
    type = FUNC10 (primop0);

  /* If args' natural types are both narrower than nominal type
     and both extend in the same manner, compare them
     in the type of the wider arg.
     Otherwise must actually extend both to the nominal
     common type lest different ways of extending
     alter the result.
     (eg, (short)-1 == (unsigned short)-1  should be 0.)  */

  else if (unsignedp0 == unsignedp1 && real1 == real2
	   && FUNC14 (FUNC10 (primop0)) < FUNC14 (*restype_ptr)
	   && FUNC14 (FUNC10 (primop1)) < FUNC14 (*restype_ptr))
    {
      type = FUNC21 (FUNC10 (primop0), FUNC10 (primop1));
      type = FUNC18 (unsignedp0
					       || FUNC15 (*restype_ptr),
					       type);
      /* Make sure shorter operand is extended the right way
	 to match the longer operand.  */
      primop0
	= FUNC22 (FUNC18 (unsignedp0,
						     FUNC10 (primop0)),
		   primop0);
      primop1
	= FUNC22 (FUNC18 (unsignedp1,
						     FUNC10 (primop1)),
		   primop1);
    }
  else
    {
      /* Here we must do the comparison on the nominal type
	 using the args exactly as we received them.  */
      type = *restype_ptr;
      primop0 = op0;
      primop1 = op1;

      if (!real1 && !real2 && FUNC25 (primop1)
	  && FUNC15 (*restype_ptr))
	{
	  tree value = 0;
	  switch (code)
	    {
	    case GE_EXPR:
	      /* All unsigned values are >= 0, so we warn if extra warnings
		 are requested.  However, if OP0 is a constant that is
		 >= 0, the signedness of the comparison isn't an issue,
		 so suppress the warning.  */
	      if (extra_warnings && !in_system_header
		  && !(FUNC3 (primop0) == INTEGER_CST
		       && !FUNC8 (FUNC22 (FUNC19 (type),
						   primop0))))
		FUNC27 (0, "comparison of unsigned expression >= 0 is always true");
	      value = truthvalue_true_node;
	      break;

	    case LT_EXPR:
	      if (extra_warnings && !in_system_header
		  && !(FUNC3 (primop0) == INTEGER_CST
		       && !FUNC8 (FUNC22 (FUNC19 (type),
						   primop0))))
		FUNC27 (0, "comparison of unsigned expression < 0 is always false");
	      value = truthvalue_false_node;
	      break;

	    default:
	      break;
	    }

	  if (value != 0)
	    {
	      /* Don't forget to evaluate PRIMOP0 if it has side effects.  */
	      if (FUNC9 (primop0))
		return FUNC16 (COMPOUND_EXPR, FUNC10 (value),
			       primop0, value);
	      return value;
	    }
	}
    }

  *op0_ptr = FUNC22 (type, primop0);
  *op1_ptr = FUNC22 (type, primop1);

  *restype_ptr = truthvalue_type_node;

  return 0;
}