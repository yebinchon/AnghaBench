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
#define  ADDR_EXPR 161 
#define  ALIGN_INDIRECT_REF 160 
#define  ARRAY_RANGE_REF 159 
#define  ARRAY_REF 158 
#define  BIT_FIELD_REF 157 
#define  CALL_EXPR 156 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  COMPLEX_CST 155 
#define  COMPONENT_REF 154 
#define  CONVERT_EXPR 153 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned int ECF_CONST ; 
 unsigned int ECF_PURE ; 
 int ERROR_MARK ; 
#define  FIX_CEIL_EXPR 152 
#define  FIX_FLOOR_EXPR 151 
#define  FIX_ROUND_EXPR 150 
#define  FIX_TRUNC_EXPR 149 
 int FUNCTION_DECL ; 
#define  IMAGPART_EXPR 148 
#define  INDIRECT_REF 147 
#define  INTEGER_CST 146 
#define  MISALIGNED_INDIRECT_REF 145 
#define  NOP_EXPR 144 
 unsigned int OEP_ONLY_CONST ; 
 unsigned int OEP_PURE_SAME ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  REALPART_EXPR 143 
#define  REAL_CST 142 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SAVE_EXPR ; 
#define  STRING_CST 141 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
#define  TRUTH_ANDIF_EXPR 140 
#define  TRUTH_AND_EXPR 139 
#define  TRUTH_NOT_EXPR 138 
#define  TRUTH_ORIF_EXPR 137 
#define  TRUTH_OR_EXPR 136 
#define  TRUTH_XOR_EXPR 135 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
#define  VECTOR_CST 134 
 unsigned int FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int) ; 
#define  tcc_binary 133 
#define  tcc_comparison 132 
#define  tcc_declaration 131 
#define  tcc_expression 130 
#define  tcc_reference 129 
#define  tcc_unary 128 
 int /*<<< orphan*/  FUNC30 (scalar_t__,scalar_t__) ; 

int
FUNC31 (tree arg0, tree arg1, unsigned int flags)
{
  /* If either is ERROR_MARK, they aren't equal.  */
  if (FUNC9 (arg0) == ERROR_MARK || FUNC9 (arg1) == ERROR_MARK)
    return 0;

  /* If both types don't have the same signedness, then we can't consider
     them equal.  We must check this before the STRIP_NOPS calls
     because they may change the signedness of the arguments.  */
  if (FUNC25 (FUNC20 (arg0)) != FUNC25 (FUNC20 (arg1)))
    return 0;

  /* If both types don't have the same precision, then it is not safe
     to strip NOPs.  */
  if (FUNC24 (FUNC20 (arg0)) != FUNC24 (FUNC20 (arg1)))
    return 0;

  FUNC7 (arg0);
  FUNC7 (arg1);

  /* In case both args are comparisons but with different comparison
     code, try to swap the comparison operands of one arg to produce
     a match and compare that variant.  */
  if (FUNC9 (arg0) != FUNC9 (arg1)
      && FUNC0 (arg0)
      && FUNC0 (arg1))
    {
      enum tree_code swap_code = FUNC29 (FUNC9 (arg1));

      if (FUNC9 (arg0) == swap_code)
	return FUNC31 (FUNC14 (arg0, 0),
			        FUNC14 (arg1, 1), flags)
	       && FUNC31 (FUNC14 (arg0, 1),
				   FUNC14 (arg1, 0), flags);
    }

  if (FUNC9 (arg0) != FUNC9 (arg1)
      /* This is needed for conversions and for COMPONENT_REF.
	 Might as well play it safe and always test this.  */
      || FUNC9 (FUNC20 (arg0)) == ERROR_MARK
      || FUNC9 (FUNC20 (arg1)) == ERROR_MARK
      || FUNC23 (FUNC20 (arg0)) != FUNC23 (FUNC20 (arg1)))
    return 0;

  /* If ARG0 and ARG1 are the same SAVE_EXPR, they are necessarily equal.
     We don't care about side effects in that case because the SAVE_EXPR
     takes care of that for us. In all other cases, two expressions are
     equal if they have no side effects.  If we have two identical
     expressions with side effects that should be treated the same due
     to the only side effects being identical SAVE_EXPR's, that will
     be detected in the recursive calls below.  */
  if (arg0 == arg1 && ! (flags & OEP_ONLY_CONST)
      && (FUNC9 (arg0) == SAVE_EXPR
	  || (! FUNC17 (arg0) && ! FUNC17 (arg1))))
    return 1;

  /* Next handle constant cases, those for which we can return 1 even
     if ONLY_CONST is set.  */
  if (FUNC11 (arg0) && FUNC11 (arg1))
    switch (FUNC9 (arg0))
      {
      case INTEGER_CST:
	return (! FUNC12 (arg0)
		&& ! FUNC12 (arg1)
		&& FUNC30 (arg0, arg1));

      case REAL_CST:
	return (! FUNC12 (arg0)
		&& ! FUNC12 (arg1)
		&& FUNC6 (FUNC16 (arg0),
					  FUNC16 (arg1)));

      case VECTOR_CST:
	{
	  tree v1, v2;

	  if (FUNC12 (arg0)
	      || FUNC12 (arg1))
	    return 0;

	  v1 = FUNC22 (arg0);
	  v2 = FUNC22 (arg1);
	  while (v1 && v2)
	    {
	      if (!FUNC31 (FUNC21 (v1), FUNC21 (v2),
				    flags))
		return 0;
	      v1 = FUNC8 (v1);
	      v2 = FUNC8 (v2);
	    }

	  return v1 == v2;
	}

      case COMPLEX_CST:
	return (FUNC31 (FUNC15 (arg0), FUNC15 (arg1),
				 flags)
		&& FUNC31 (FUNC13 (arg0), FUNC13 (arg1),
				    flags));

      case STRING_CST:
	return (FUNC18 (arg0) == FUNC18 (arg1)
		&& ! FUNC28 (FUNC19 (arg0),
			      FUNC19 (arg1),
			      FUNC18 (arg0)));

      case ADDR_EXPR:
	return FUNC31 (FUNC14 (arg0, 0), FUNC14 (arg1, 0),
				0);
      default:
	break;
      }

  if (flags & OEP_ONLY_CONST)
    return 0;

/* Define macros to test an operand from arg0 and arg1 for equality and a
   variant that allows null and views null as being different from any
   non-null value.  In the latter case, if either is null, the both
   must be; otherwise, do the normal comparison.  */
#define OP_SAME(N) operand_equal_p (TREE_OPERAND (arg0, N),	\
				    TREE_OPERAND (arg1, N), flags)

#define OP_SAME_WITH_NULL(N)				\
  ((!TREE_OPERAND (arg0, N) || !TREE_OPERAND (arg1, N))	\
   ? TREE_OPERAND (arg0, N) == TREE_OPERAND (arg1, N) : OP_SAME (N))

  switch (FUNC10 (FUNC9 (arg0)))
    {
    case tcc_unary:
      /* Two conversions are equal only if signedness and modes match.  */
      switch (FUNC9 (arg0))
        {
        case NOP_EXPR:
        case CONVERT_EXPR:
        case FIX_CEIL_EXPR:
        case FIX_TRUNC_EXPR:
        case FIX_FLOOR_EXPR:
        case FIX_ROUND_EXPR:
	  if (FUNC25 (FUNC20 (arg0))
	      != FUNC25 (FUNC20 (arg1)))
	    return 0;
	  break;
	default:
	  break;
	}

      return OP_SAME (0);


    case tcc_comparison:
    case tcc_binary:
      if (OP_SAME (0) && OP_SAME (1))
	return 1;

      /* For commutative ops, allow the other order.  */
      return (FUNC27 (FUNC9 (arg0))
	      && FUNC31 (FUNC14 (arg0, 0),
				  FUNC14 (arg1, 1), flags)
	      && FUNC31 (FUNC14 (arg0, 1),
				  FUNC14 (arg1, 0), flags));

    case tcc_reference:
      /* If either of the pointer (or reference) expressions we are
	 dereferencing contain a side effect, these cannot be equal.  */
      if (FUNC17 (arg0)
	  || FUNC17 (arg1))
	return 0;

      switch (FUNC9 (arg0))
	{
	case INDIRECT_REF:
	case ALIGN_INDIRECT_REF:
	case MISALIGNED_INDIRECT_REF:
	case REALPART_EXPR:
	case IMAGPART_EXPR:
	  return OP_SAME (0);

	case ARRAY_REF:
	case ARRAY_RANGE_REF:
	  /* Operands 2 and 3 may be null.
	     Compare the array index by value if it is constant first as we
	     may have different types but same value here.  */
	  return (OP_SAME (0)
		  && (FUNC30 (FUNC14 (arg0, 1),
					  FUNC14 (arg1, 1))
		      || OP_SAME (1))
		  && OP_SAME_WITH_NULL (2)
		  && OP_SAME_WITH_NULL (3));

	case COMPONENT_REF:
	  /* Handle operand 2 the same as for ARRAY_REF.  Operand 0
	     may be NULL when we're called to compare MEM_EXPRs.  */
	  return OP_SAME_WITH_NULL (0)
		 && OP_SAME (1)
		 && OP_SAME_WITH_NULL (2);

	case BIT_FIELD_REF:
	  return OP_SAME (0) && OP_SAME (1) && OP_SAME (2);

	default:
	  return 0;
	}

    case tcc_expression:
      switch (FUNC9 (arg0))
	{
	case ADDR_EXPR:
	case TRUTH_NOT_EXPR:
	  return OP_SAME (0);

	case TRUTH_ANDIF_EXPR:
	case TRUTH_ORIF_EXPR:
	  return OP_SAME (0) && OP_SAME (1);

	case TRUTH_AND_EXPR:
	case TRUTH_OR_EXPR:
	case TRUTH_XOR_EXPR:
	  if (OP_SAME (0) && OP_SAME (1))
	    return 1;

	  /* Otherwise take into account this is a commutative operation.  */
	  return (FUNC31 (FUNC14 (arg0, 0),
				   FUNC14 (arg1, 1), flags)
		  && FUNC31 (FUNC14 (arg0, 1),
				      FUNC14 (arg1, 0), flags));

	case CALL_EXPR:
	  /* If the CALL_EXPRs call different functions, then they
	     clearly can not be equal.  */
	  if (!OP_SAME (0))
	    return 0;

	  {
	    unsigned int cef = FUNC26 (arg0);
	    if (flags & OEP_PURE_SAME)
	      cef &= ECF_CONST | ECF_PURE;
	    else
	      cef &= ECF_CONST;
	    if (!cef)
	      return 0;
	  }

	  /* Now see if all the arguments are the same.  operand_equal_p
	     does not handle TREE_LIST, so we walk the operands here
	     feeding them to operand_equal_p.  */
	  arg0 = FUNC14 (arg0, 1);
	  arg1 = FUNC14 (arg1, 1);
	  while (arg0 && arg1)
	    {
	      if (! FUNC31 (FUNC21 (arg0), FUNC21 (arg1),
				     flags))
		return 0;

	      arg0 = FUNC8 (arg0);
	      arg1 = FUNC8 (arg1);
	    }

	  /* If we get here and both argument lists are exhausted
	     then the CALL_EXPRs are equal.  */
	  return ! (arg0 || arg1);

	default:
	  return 0;
	}

    case tcc_declaration:
      /* Consider __builtin_sqrt equal to sqrt.  */
      return (FUNC9 (arg0) == FUNCTION_DECL
	      && FUNC1 (arg0) && FUNC1 (arg1)
	      && FUNC2 (arg0) == FUNC2 (arg1)
	      && FUNC3 (arg0) == FUNC3 (arg1));

    default:
      return 0;
    }

#undef OP_SAME
#undef OP_SAME_WITH_NULL
}