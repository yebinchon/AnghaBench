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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int INDIRECT_REF ; 
 int PLACEHOLDER_EXPR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int TREE_LIST ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 
#define  tcc_binary 136 
#define  tcc_comparison 135 
#define  tcc_constant 134 
#define  tcc_declaration 133 
#define  tcc_exceptional 132 
#define  tcc_expression 131 
#define  tcc_reference 130 
#define  tcc_statement 129 
#define  tcc_unary 128 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

tree
FUNC22 (tree exp, tree obj)
{
  enum tree_code code = FUNC6 (exp);
  tree op0, op1, op2, op3;

  /* If this is a PLACEHOLDER_EXPR, see if we find a corresponding type
     in the chain of OBJ.  */
  if (code == PLACEHOLDER_EXPR)
    {
      tree need_type = FUNC13 (FUNC11 (exp));
      tree elt;

      for (elt = obj; elt != 0;
	   elt = ((FUNC6 (elt) == COMPOUND_EXPR
		   || FUNC6 (elt) == COND_EXPR)
		  ? FUNC9 (elt, 1)
		  : (FUNC3 (elt)
		     || FUNC14 (elt)
		     || FUNC0 (elt)
		     || FUNC1 (elt))
		  ? FUNC9 (elt, 0) : 0))
	if (FUNC13 (FUNC11 (elt)) == need_type)
	  return elt;

      for (elt = obj; elt != 0;
	   elt = ((FUNC6 (elt) == COMPOUND_EXPR
		   || FUNC6 (elt) == COND_EXPR)
		  ? FUNC9 (elt, 1)
		  : (FUNC3 (elt)
		     || FUNC14 (elt)
		     || FUNC0 (elt)
		     || FUNC1 (elt))
		  ? FUNC9 (elt, 0) : 0))
	if (FUNC2 (FUNC11 (elt))
	    && (FUNC13 (FUNC11 (FUNC11 (elt)))
		== need_type))
	  return FUNC17 (INDIRECT_REF, need_type, elt);

      /* If we didn't find it, return the original PLACEHOLDER_EXPR.  If it
	 survives until RTL generation, there will be an error.  */
      return exp;
    }

  /* TREE_LIST is special because we need to look at TREE_VALUE
     and TREE_CHAIN, not TREE_OPERANDS.  */
  else if (code == TREE_LIST)
    {
      op0 = FUNC4 (FUNC5 (exp), obj);
      op1 = FUNC4 (FUNC12 (exp), obj);
      if (op0 == FUNC5 (exp) && op1 == FUNC12 (exp))
	return exp;

      return FUNC21 (FUNC10 (exp), op1, op0);
    }
  else
    switch (FUNC7 (code))
      {
      case tcc_constant:
      case tcc_declaration:
	return exp;

      case tcc_exceptional:
      case tcc_unary:
      case tcc_binary:
      case tcc_comparison:
      case tcc_expression:
      case tcc_reference:
      case tcc_statement:
	switch (FUNC8 (code))
	  {
	  case 0:
	    return exp;

	  case 1:
	    op0 = FUNC4 (FUNC9 (exp, 0), obj);
	    if (op0 == FUNC9 (exp, 0))
	      return exp;
	    else
	      return FUNC17 (code, FUNC11 (exp), op0);

	  case 2:
	    op0 = FUNC4 (FUNC9 (exp, 0), obj);
	    op1 = FUNC4 (FUNC9 (exp, 1), obj);

	    if (op0 == FUNC9 (exp, 0) && op1 == FUNC9 (exp, 1))
	      return exp;
	    else
	      return FUNC18 (code, FUNC11 (exp), op0, op1);

	  case 3:
	    op0 = FUNC4 (FUNC9 (exp, 0), obj);
	    op1 = FUNC4 (FUNC9 (exp, 1), obj);
	    op2 = FUNC4 (FUNC9 (exp, 2), obj);

	    if (op0 == FUNC9 (exp, 0) && op1 == FUNC9 (exp, 1)
		&& op2 == FUNC9 (exp, 2))
	      return exp;
	    else
	      return FUNC19 (code, FUNC11 (exp), op0, op1, op2);

	  case 4:
	    op0 = FUNC4 (FUNC9 (exp, 0), obj);
	    op1 = FUNC4 (FUNC9 (exp, 1), obj);
	    op2 = FUNC4 (FUNC9 (exp, 2), obj);
	    op3 = FUNC4 (FUNC9 (exp, 3), obj);

	    if (op0 == FUNC9 (exp, 0) && op1 == FUNC9 (exp, 1)
		&& op2 == FUNC9 (exp, 2)
		&& op3 == FUNC9 (exp, 3))
	      return exp;
	    else
	      return FUNC16 (FUNC15 (code, FUNC11 (exp), op0, op1, op2, op3));

	  default:
	    FUNC20 ();
	  }
	break;

      default:
	FUNC20 ();
      }
}