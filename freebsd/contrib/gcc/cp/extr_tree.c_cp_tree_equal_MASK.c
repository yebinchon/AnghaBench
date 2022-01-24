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
#define  ALIGNOF_EXPR 159 
#define  BASELINK 158 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  CALL_EXPR 157 
#define  COMPLEX_CST 156 
#define  COMPONENT_REF 155 
#define  CONSTRUCTOR 154 
#define  CONST_DECL 153 
 int CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  FUNCTION_DECL 152 
#define  IDENTIFIER_NODE 151 
#define  INTEGER_CST 150 
 int NON_LVALUE_EXPR ; 
 int NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  OVERLOAD 149 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  PARM_DECL 148 
#define  PTRMEM_CST 147 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
#define  REAL_CST 146 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SAVE_EXPR 145 
#define  SIZEOF_EXPR 144 
#define  SSA_NAME 143 
#define  STRING_CST 142 
#define  TARGET_EXPR 141 
#define  TEMPLATE_DECL 140 
#define  TEMPLATE_ID_EXPR 139 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
#define  TEMPLATE_PARM_INDEX 138 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
#define  TREE_LIST 137 
 scalar_t__ FUNC20 (scalar_t__,int) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__,unsigned int) ; 
 unsigned int FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
#define  VAR_DECL 136 
#define  WITH_CLEANUP_EXPR 135 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC33 (scalar_t__,scalar_t__) ; 
#define  tcc_binary 134 
#define  tcc_comparison 133 
#define  tcc_expression 132 
#define  tcc_reference 131 
#define  tcc_statement 130 
#define  tcc_type 129 
#define  tcc_unary 128 

bool
FUNC34 (tree t1, tree t2)
{
  enum tree_code code1, code2;

  if (t1 == t2)
    return true;
  if (!t1 || !t2)
    return false;

  for (code1 = FUNC14 (t1);
       code1 == NOP_EXPR || code1 == CONVERT_EXPR
	 || code1 == NON_LVALUE_EXPR;
       code1 = FUNC14 (t1))
    t1 = FUNC20 (t1, 0);
  for (code2 = FUNC14 (t2);
       code2 == NOP_EXPR || code2 == CONVERT_EXPR
	 || code1 == NON_LVALUE_EXPR;
       code2 = FUNC14 (t2))
    t2 = FUNC20 (t2, 0);

  /* They might have become equal now.  */
  if (t1 == t2)
    return true;

  if (code1 != code2)
    return false;

  switch (code1)
    {
    case INTEGER_CST:
      return FUNC19 (t1) == FUNC19 (t2)
	&& FUNC18 (t1) == FUNC18 (t2);

    case REAL_CST:
      return FUNC9 (FUNC23 (t1), FUNC23 (t2));

    case STRING_CST:
      return FUNC24 (t1) == FUNC24 (t2)
	&& !FUNC32 (FUNC25 (t1), FUNC25 (t2),
		    FUNC24 (t1));

    case COMPLEX_CST:
      return FUNC34 (FUNC22 (t1), FUNC22 (t2))
	&& FUNC34 (FUNC17 (t1), FUNC17 (t2));

    case CONSTRUCTOR:
      /* We need to do this when determining whether or not two
	 non-type pointer to member function template arguments
	 are the same.  */
      if (!(FUNC33 (FUNC26 (t1), FUNC26 (t2))
	    /* The first operand is RTL.  */
	    && FUNC20 (t1, 0) == FUNC20 (t2, 0)))
	return false;
      return FUNC34 (FUNC20 (t1, 1), FUNC20 (t2, 1));

    case TREE_LIST:
      if (!FUNC34 (FUNC21 (t1), FUNC21 (t2)))
	return false;
      if (!FUNC34 (FUNC27 (t1), FUNC27 (t2)))
	return false;
      return FUNC34 (FUNC13 (t1), FUNC13 (t2));

    case SAVE_EXPR:
      return FUNC34 (FUNC20 (t1, 0), FUNC20 (t2, 0));

    case CALL_EXPR:
      if (!FUNC34 (FUNC20 (t1, 0), FUNC20 (t2, 0)))
	return false;
      return FUNC34 (FUNC20 (t1, 1), FUNC20 (t2, 1));

    case TARGET_EXPR:
      {
	tree o1 = FUNC20 (t1, 0);
	tree o2 = FUNC20 (t2, 0);

	/* Special case: if either target is an unallocated VAR_DECL,
	   it means that it's going to be unified with whatever the
	   TARGET_EXPR is really supposed to initialize, so treat it
	   as being equivalent to anything.  */
	if (FUNC14 (o1) == VAR_DECL && FUNC3 (o1) == NULL_TREE
	    && !FUNC4 (o1))
	  /*Nop*/;
	else if (FUNC14 (o2) == VAR_DECL && FUNC3 (o2) == NULL_TREE
		 && !FUNC4 (o2))
	  /*Nop*/;
	else if (!FUNC34 (o1, o2))
	  return false;

	return FUNC34 (FUNC20 (t1, 1), FUNC20 (t2, 1));
      }

    case WITH_CLEANUP_EXPR:
      if (!FUNC34 (FUNC20 (t1, 0), FUNC20 (t2, 0)))
	return false;
      return FUNC34 (FUNC20 (t1, 1), FUNC20 (t1, 1));

    case COMPONENT_REF:
      if (FUNC20 (t1, 1) != FUNC20 (t2, 1))
	return false;
      return FUNC34 (FUNC20 (t1, 0), FUNC20 (t2, 0));

    case VAR_DECL:
    case PARM_DECL:
    case CONST_DECL:
    case FUNCTION_DECL:
    case TEMPLATE_DECL:
    case IDENTIFIER_NODE:
    case SSA_NAME:
      return false;

    case BASELINK:
      return (FUNC1 (t1) == FUNC1 (t2)
	      && FUNC0 (t1) == FUNC0 (t2)
	      && FUNC34 (FUNC2 (t1),
				FUNC2 (t2)));

    case TEMPLATE_PARM_INDEX:
      return (FUNC11 (t1) == FUNC11 (t2)
	      && FUNC12 (t1) == FUNC12 (t2)
	      && FUNC33 (FUNC26 (FUNC10 (t1)),
			      FUNC26 (FUNC10 (t2))));

    case TEMPLATE_ID_EXPR:
      {
	unsigned ix;
	tree vec1, vec2;

	if (!FUNC34 (FUNC20 (t1, 0), FUNC20 (t2, 0)))
	  return false;
	vec1 = FUNC20 (t1, 1);
	vec2 = FUNC20 (t2, 1);

	if (!vec1 || !vec2)
	  return !vec1 && !vec2;

	if (FUNC29 (vec1) != FUNC29 (vec2))
	  return false;

	for (ix = FUNC29 (vec1); ix--;)
	  if (!FUNC34 (FUNC28 (vec1, ix),
			      FUNC28 (vec2, ix)))
	    return false;

	return true;
      }

    case SIZEOF_EXPR:
    case ALIGNOF_EXPR:
      {
	tree o1 = FUNC20 (t1, 0);
	tree o2 = FUNC20 (t2, 0);

	if (FUNC14 (o1) != FUNC14 (o2))
	  return false;
	if (FUNC30 (o1))
	  return FUNC33 (o1, o2);
	else
	  return FUNC34 (o1, o2);
      }

    case PTRMEM_CST:
      /* Two pointer-to-members are the same if they point to the same
	 field or function in the same class.  */
      if (FUNC8 (t1) != FUNC8 (t2))
	return false;

      return FUNC33 (FUNC7 (t1), FUNC7 (t2));

    case OVERLOAD:
      if (FUNC6 (t1) != FUNC6 (t2))
	return false;
      return FUNC34 (FUNC5 (t1), FUNC5 (t2));

    default:
      break;
    }

  switch (FUNC15 (code1))
    {
    case tcc_unary:
    case tcc_binary:
    case tcc_comparison:
    case tcc_expression:
    case tcc_reference:
    case tcc_statement:
      {
	int i;

	for (i = 0; i < FUNC16 (code1); ++i)
	  if (!FUNC34 (FUNC20 (t1, i), FUNC20 (t2, i)))
	    return false;

	return true;
      }

    case tcc_type:
      return FUNC33 (t1, t2);
    default:
      FUNC31 ();
    }
  /* We can get here with --disable-checking.  */
  return false;
}