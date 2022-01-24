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

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ALIGNOF_EXPR ; 
 scalar_t__ BASELINK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CAST_EXPR ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ CONST_CAST_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ DELETE_EXPR ; 
 scalar_t__ DYNAMIC_CAST_EXPR ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ NEW_EXPR ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ PSEUDO_DTOR_EXPR ; 
 scalar_t__ REINTERPRET_CAST_EXPR ; 
 scalar_t__ SCOPE_REF ; 
 scalar_t__ SIZEOF_EXPR ; 
 scalar_t__ STATIC_CAST_EXPR ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ THROW_EXPR ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ TYPEID_EXPR ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ USING_DECL ; 
 scalar_t__ VEC_DELETE_EXPR ; 
 scalar_t__ VEC_NEW_EXPR ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int (*) (scalar_t__)) ; 
 int FUNC15 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ unknown_type_node ; 
 scalar_t__ FUNC17 (scalar_t__) ; 

bool
FUNC18 (tree expression)
{
  if (!processing_template_decl)
    return false;

  if (expression == error_mark_node)
    return false;

  /* An unresolved name is always dependent.  */
  if (FUNC8 (expression) == IDENTIFIER_NODE
      || FUNC8 (expression) == USING_DECL)
    return true;

  /* Some expression forms are never type-dependent.  */
  if (FUNC8 (expression) == PSEUDO_DTOR_EXPR
      || FUNC8 (expression) == SIZEOF_EXPR
      || FUNC8 (expression) == ALIGNOF_EXPR
      || FUNC8 (expression) == TYPEID_EXPR
      || FUNC8 (expression) == DELETE_EXPR
      || FUNC8 (expression) == VEC_DELETE_EXPR
      || FUNC8 (expression) == THROW_EXPR)
    return false;

  /* The types of these expressions depends only on the type to which
     the cast occurs.  */
  if (FUNC8 (expression) == DYNAMIC_CAST_EXPR
      || FUNC8 (expression) == STATIC_CAST_EXPR
      || FUNC8 (expression) == CONST_CAST_EXPR
      || FUNC8 (expression) == REINTERPRET_CAST_EXPR
      || FUNC8 (expression) == CAST_EXPR)
    return FUNC15 (FUNC11 (expression));

  /* The types of these expressions depends only on the type created
     by the expression.  */
  if (FUNC8 (expression) == NEW_EXPR
      || FUNC8 (expression) == VEC_NEW_EXPR)
    {
      /* For NEW_EXPR tree nodes created inside a template, either
	 the object type itself or a TREE_LIST may appear as the
	 operand 1.  */
      tree type = FUNC9 (expression, 1);
      if (FUNC8 (type) == TREE_LIST)
	/* This is an array type.  We need to check array dimensions
	   as well.  */
	return FUNC15 (FUNC12 (FUNC10 (type)))
	       || FUNC17
		    (FUNC9 (FUNC12 (type), 1));
      else
	return FUNC15 (type);
    }

  if (FUNC8 (expression) == SCOPE_REF
      && FUNC14 (expression,
				type_dependent_expression_p))
    return true;

  if (FUNC8 (expression) == FUNCTION_DECL
      && FUNC1 (expression)
      && FUNC2 (expression)
      && (FUNC13
	  (FUNC5 (FUNC4 (expression)))))
    return true;

  if (FUNC8 (expression) == TEMPLATE_DECL
      && !FUNC3 (expression))
    return false;

  if (FUNC11 (expression) == unknown_type_node)
    {
      if (FUNC8 (expression) == ADDR_EXPR)
	return FUNC18 (FUNC9 (expression, 0));
      if (FUNC8 (expression) == COMPONENT_REF
	  || FUNC8 (expression) == OFFSET_REF)
	{
	  if (FUNC18 (FUNC9 (expression, 0)))
	    return true;
	  expression = FUNC9 (expression, 1);
	  if (FUNC8 (expression) == IDENTIFIER_NODE)
	    return false;
	}
      /* SCOPE_REF with non-null TREE_TYPE is always non-dependent.  */
      if (FUNC8 (expression) == SCOPE_REF)
	return false;

      if (FUNC8 (expression) == BASELINK)
	expression = FUNC0 (expression);

      if (FUNC8 (expression) == TEMPLATE_ID_EXPR)
	{
	  if (FUNC13
	      (FUNC9 (expression, 1)))
	    return true;
	  expression = FUNC9 (expression, 0);
	}
      FUNC16 (FUNC8 (expression) == OVERLOAD
		  || FUNC8 (expression) == FUNCTION_DECL);

      while (expression)
	{
	  if (FUNC18 (FUNC6 (expression)))
	    return true;
	  expression = FUNC7 (expression);
	}
      return false;
    }

  FUNC16 (FUNC8 (expression) != TYPE_DECL);

  return (FUNC15 (FUNC11 (expression)));
}