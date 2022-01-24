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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
#define  ALIGNOF_EXPR 147 
#define  CALL_EXPR 146 
#define  CAST_EXPR 145 
#define  COMPONENT_REF 144 
#define  CONST_CAST_EXPR 143 
#define  CONST_DECL 142 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  DYNAMIC_CAST_EXPR 141 
#define  IDENTIFIER_NODE 140 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  MODOP_EXPR 139 
#define  REINTERPRET_CAST_EXPR 138 
#define  SCOPE_REF 137 
#define  SIZEOF_EXPR 136 
#define  STATIC_CAST_EXPR 135 
#define  TEMPLATE_PARM_INDEX 134 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int TREE_LIST ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 133 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int (*) (int /*<<< orphan*/ )) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processing_template_decl ; 
#define  tcc_binary 132 
#define  tcc_comparison 131 
#define  tcc_expression 130 
#define  tcc_reference 129 
#define  tcc_unary 128 
 int FUNC14 (int /*<<< orphan*/ ) ; 

bool
FUNC15 (tree expression)
{
  if (!processing_template_decl)
    return false;

  /* A name declared with a dependent type.  */
  if (FUNC1 (expression) && FUNC14 (expression))
    return true;

  switch (FUNC4 (expression))
    {
    case IDENTIFIER_NODE:
      /* A name that has not been looked up -- must be dependent.  */
      return true;

    case TEMPLATE_PARM_INDEX:
      /* A non-type template parm.  */
      return true;

    case CONST_DECL:
      /* A non-type template parm.  */
      if (FUNC2 (expression))
	return true;
      return false;

    case VAR_DECL:
       /* A constant with integral or enumeration type and is initialized
	  with an expression that is value-dependent.  */
      if (FUNC0 (expression)
	  && FUNC3 (FUNC8 (expression))
	  && FUNC15 (FUNC0 (expression)))
	return true;
      return false;

    case DYNAMIC_CAST_EXPR:
    case STATIC_CAST_EXPR:
    case CONST_CAST_EXPR:
    case REINTERPRET_CAST_EXPR:
    case CAST_EXPR:
      /* These expressions are value-dependent if the type to which
	 the cast occurs is dependent or the expression being casted
	 is value-dependent.  */
      {
	tree type = FUNC8 (expression);

	if (FUNC12 (type))
	  return true;

	/* A functional cast has a list of operands.  */
	expression = FUNC7 (expression, 0);
	if (!expression)
	  {
	    /* If there are no operands, it must be an expression such
	       as "int()". This should not happen for aggregate types
	       because it would form non-constant expressions.  */
	    FUNC13 (FUNC3 (type));

	    return false;
	  }

	if (FUNC4 (expression) == TREE_LIST)
	  return FUNC10 (expression);

	return FUNC15 (expression);
      }

    case SIZEOF_EXPR:
    case ALIGNOF_EXPR:
      /* A `sizeof' expression is value-dependent if the operand is
	 type-dependent.  */
      expression = FUNC7 (expression, 0);
      if (FUNC9 (expression))
	return FUNC12 (expression);
      return FUNC14 (expression);

    case SCOPE_REF:
      return FUNC11 (expression, value_dependent_expression_p);

    case COMPONENT_REF:
      return (FUNC15 (FUNC7 (expression, 0))
	      || FUNC15 (FUNC7 (expression, 1)));

    case CALL_EXPR:
      /* A CALL_EXPR may appear in a constant expression if it is a
	 call to a builtin function, e.g., __builtin_constant_p.  All
	 such calls are value-dependent.  */
      return true;

    case MODOP_EXPR:
      return ((FUNC15 (FUNC7 (expression, 0)))
	      || (FUNC15 (FUNC7 (expression, 2))));

    default:
      /* A constant expression is value-dependent if any subexpression is
	 value-dependent.  */
      switch (FUNC5 (FUNC4 (expression)))
	{
	case tcc_reference:
	case tcc_unary:
	  return (FUNC15
		  (FUNC7 (expression, 0)));

	case tcc_comparison:
	case tcc_binary:
	  return ((FUNC15
		   (FUNC7 (expression, 0)))
		  || (FUNC15
		      (FUNC7 (expression, 1))));

	case tcc_expression:
	  {
	    int i;
	    for (i = 0; i < FUNC6 (FUNC4 (expression)); ++i)
	      /* In some cases, some of the operands may be missing.
		 (For example, in the case of PREDECREMENT_EXPR, the
		 amount to increment by may be missing.)  That doesn't
		 make the expression dependent.  */
	      if (FUNC7 (expression, i)
		  && (FUNC15
		      (FUNC7 (expression, i))))
		return true;
	    return false;
	  }

	default:
	  break;
	}
    }

  /* The expression is not value-dependent.  */
  return false;
}