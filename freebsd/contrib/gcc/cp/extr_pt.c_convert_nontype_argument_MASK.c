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
typedef  char* tree ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  CONV_IMPLICIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  LOOKUP_PROTECT ; 
 scalar_t__ NOP_EXPR ; 
 char* NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ STRING_CST ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (char*,char*) ; 
 char* FUNC18 (char*,char*) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,char*,...) ; 
 char* error_mark_node ; 
 scalar_t__ FUNC21 (char*) ; 
 char* FUNC22 (char*) ; 
 char* FUNC23 (char*) ; 
 char* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 char* FUNC28 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC29 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC30 (char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int FUNC32 (char*,char*) ; 
 int FUNC33 (char*,char*) ; 
 int /*<<< orphan*/  tf_none ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 

__attribute__((used)) static tree
FUNC35 (tree type, tree expr)
{
  tree expr_type;

  /* Detect immediately string literals as invalid non-type argument.
     This special-case is not needed for correctness (we would easily
     catch this later), but only to provide better diagnostic for this
     common user mistake. As suggested by DR 100, we do not mention
     linkage issues in the diagnostic as this is not the point.  */
  if (FUNC5 (expr) == STRING_CST)
    {
      FUNC20 ("%qE is not a valid template argument for type %qT "
	     "because string literals can never be used in this context",
	     expr, type);
      return NULL_TREE;
    }

  /* If we are in a template, EXPR may be non-dependent, but still
     have a syntactic, rather than semantic, form.  For example, EXPR
     might be a SCOPE_REF, rather than the VAR_DECL to which the
     SCOPE_REF refers.  Preserving the qualifying scope is necessary
     so that access checking can be performed when the template is
     instantiated -- but here we need the resolved form so that we can
     convert the argument.  */
  expr = FUNC24 (expr);
  if (FUNC21 (expr))
    return error_mark_node;
  expr_type = FUNC7 (expr);

  /* HACK: Due to double coercion, we can get a
     NOP_EXPR<REFERENCE_TYPE>(ADDR_EXPR<POINTER_TYPE> (arg)) here,
     which is the tree that we built on the first call (see
     below when coercing to reference to object or to reference to
     function). We just strip everything and get to the arg.
     See g++.old-deja/g++.oliva/template4.C and g++.dg/template/nontype9.C
     for examples.  */
  if (FUNC5 (expr) == NOP_EXPR)
    {
      if (FUNC13 (type) || FUNC12 (type))
	{
	  /* ??? Maybe we could use convert_from_reference here, but we
	     would need to relax its constraints because the NOP_EXPR
	     could actually change the type to something more cv-qualified,
	     and this is not folded by convert_from_reference.  */
	  tree addr = FUNC6 (expr, 0);
	  FUNC25 (FUNC5 (expr_type) == REFERENCE_TYPE);
	  FUNC25 (FUNC5 (addr) == ADDR_EXPR);
	  FUNC25 (FUNC5 (FUNC7 (addr)) == POINTER_TYPE);
	  FUNC25 (FUNC32
		      (FUNC7 (expr_type),
		       FUNC7 (FUNC7 (addr))));

	  expr = FUNC6 (addr, 0);
	  expr_type = FUNC7 (expr);
	}

      /* We could also generate a NOP_EXPR(ADDR_EXPR()) when the
	 parameter is a pointer to object, through decay and
	 qualification conversion. Let's strip everything.  */
      else if (FUNC11 (type))
	{
	  FUNC4 (expr);
	  FUNC25 (FUNC5 (expr) == ADDR_EXPR);
	  FUNC25 (FUNC5 (FUNC7 (expr)) == POINTER_TYPE);
	  /* Skip the ADDR_EXPR only if it is part of the decay for
	     an array. Otherwise, it is part of the original argument
	     in the source code.  */
	  if (FUNC5 (FUNC7 (FUNC6 (expr, 0))) == ARRAY_TYPE)
	    expr = FUNC6 (expr, 0);
	  expr_type = FUNC7 (expr);
	}
    }

  /* [temp.arg.nontype]/5, bullet 1

     For a non-type template-parameter of integral or enumeration type,
     integral promotions (_conv.prom_) and integral conversions
     (_conv.integral_) are applied.  */
  if (FUNC3 (type))
    {
      if (!FUNC3 (expr_type))
	return error_mark_node;

      expr = FUNC23 (expr);
      /* Notice that there are constant expressions like '4 % 0' which
	 do not fold into integer constants.  */
      if (FUNC5 (expr) != INTEGER_CST)
	{
	  FUNC20 ("%qE is not a valid template argument for type %qT "
		 "because it is a non-constant expression", expr, type);
	  return NULL_TREE;
	}

      /* At this point, an implicit conversion does what we want,
	 because we already know that the expression is of integral
	 type.  */
      expr = FUNC29 (type, expr, CONV_IMPLICIT, LOOKUP_PROTECT);
      if (expr == error_mark_node)
	return error_mark_node;

      /* Conversion was allowed: fold it to a bare integer constant.  */
      expr = FUNC22 (expr);
    }
  /* [temp.arg.nontype]/5, bullet 2

     For a non-type template-parameter of type pointer to object,
     qualification conversions (_conv.qual_) and the array-to-pointer
     conversion (_conv.array_) are applied.  */
  else if (FUNC11 (type))
    {
      /* [temp.arg.nontype]/1  (TC1 version, DR 49):

	 A template-argument for a non-type, non-template template-parameter
	 shall be one of: [...]

	 -- the name of a non-type template-parameter;
	 -- the address of an object or function with external linkage, [...]
	    expressed as "& id-expression" where the & is optional if the name
	    refers to a function or array, or if the corresponding
	    template-parameter is a reference.

	Here, we do not care about functions, as they are invalid anyway
	for a parameter of type pointer-to-object.  */

      if (FUNC1 (expr) && FUNC2 (expr))
	/* Non-type template parameters are OK.  */
	;
      else if (FUNC5 (expr) != ADDR_EXPR
	       && FUNC5 (expr_type) != ARRAY_TYPE)
	{
	  if (FUNC5 (expr) == VAR_DECL)
	    {
	      FUNC20 ("%qD is not a valid template argument "
		     "because %qD is a variable, not the address of "
		     "a variable",
		     expr, expr);
	      return NULL_TREE;
	    }
	  /* Other values, like integer constants, might be valid
	     non-type arguments of some other type.  */
	  return error_mark_node;
	}
      else
	{
	  tree decl;

	  decl = ((FUNC5 (expr) == ADDR_EXPR)
		  ? FUNC6 (expr, 0) : expr);
	  if (FUNC5 (decl) != VAR_DECL)
	    {
	      FUNC20 ("%qE is not a valid template argument of type %qT "
		     "because %qE is not a variable",
		     expr, type, decl);
	      return NULL_TREE;
	    }
	  else if (!FUNC0 (decl))
	    {
	      FUNC20 ("%qE is not a valid template argument of type %qT "
		     "because %qD does not have external linkage",
		     expr, type, decl);
	      return NULL_TREE;
	    }
	}

      expr = FUNC19 (expr);
      if (expr == error_mark_node)
	return error_mark_node;

      expr = FUNC30 (type, expr);
      if (expr == error_mark_node)
	return error_mark_node;
    }
  /* [temp.arg.nontype]/5, bullet 3

     For a non-type template-parameter of type reference to object, no
     conversions apply. The type referred to by the reference may be more
     cv-qualified than the (otherwise identical) type of the
     template-argument. The template-parameter is bound directly to the
     template-argument, which must be an lvalue.  */
  else if (FUNC13 (type))
    {
      if (!FUNC32 (FUNC7 (type),
						      expr_type))
	return error_mark_node;

      if (!FUNC14 (FUNC7 (type), expr_type))
	{
	  FUNC20 ("%qE is not a valid template argument for type %qT "
		 "because of conflicts in cv-qualification", expr, type);
	  return NULL_TREE;
	}

      if (!FUNC31 (expr))
	{
	  FUNC20 ("%qE is not a valid template argument for type %qT "
		 "because it is not an lvalue", expr, type);
	  return NULL_TREE;
	}

      /* [temp.arg.nontype]/1

	 A template-argument for a non-type, non-template template-parameter
	 shall be one of: [...]

	 -- the address of an object or function with external linkage.  */
      if (!FUNC0 (expr))
	{
	  FUNC20 ("%qE is not a valid template argument for type %qT "
		 "because object %qD has not external linkage",
		 expr, type, expr);
	  return NULL_TREE;
	}

      expr = FUNC16 (type, FUNC15 (expr));
    }
  /* [temp.arg.nontype]/5, bullet 4

     For a non-type template-parameter of type pointer to function, only
     the function-to-pointer conversion (_conv.func_) is applied. If the
     template-argument represents a set of overloaded functions (or a
     pointer to such), the matching function is selected from the set
     (_over.over_).  */
  else if (FUNC8 (type))
    {
      /* If the argument is a template-id, we might not have enough
	 context information to decay the pointer.  */
      if (!FUNC34 (expr_type))
	{
	  expr = FUNC19 (expr);
	  if (expr == error_mark_node)
	    return error_mark_node;
	}

      expr = FUNC18 (type, expr);
      if (!expr || expr == error_mark_node)
	return expr;
    }
  /* [temp.arg.nontype]/5, bullet 5

     For a non-type template-parameter of type reference to function, no
     conversions apply. If the template-argument represents a set of
     overloaded functions, the matching function is selected from the set
     (_over.over_).  */
  else if (FUNC12 (type))
    {
      if (FUNC5 (expr) == ADDR_EXPR)
	{
	  FUNC20 ("%qE is not a valid template argument for type %qT "
		 "because it is a pointer", expr, type);
	  FUNC27 ("try using %qE instead", FUNC6 (expr, 0));
	  return NULL_TREE;
	}

      expr = FUNC18 (FUNC7 (type), expr);
      if (!expr || expr == error_mark_node)
	return expr;

      expr = FUNC16 (type, FUNC15 (expr));
    }
  /* [temp.arg.nontype]/5, bullet 6

     For a non-type template-parameter of type pointer to member function,
     no conversions apply. If the template-argument represents a set of
     overloaded member functions, the matching member function is selected
     from the set (_over.over_).  */
  else if (FUNC9 (type))
    {
      expr = FUNC28 (type, expr, tf_none);
      if (expr == error_mark_node)
	return error_mark_node;

      /* There is no way to disable standard conversions in
	 resolve_address_of_overloaded_function (called by
	 instantiate_type). It is possible that the call succeeded by
	 converting &B::I to &D::I (where B is a base of D), so we need
	 to reject this conversion here.

	 Actually, even if there was a way to disable standard conversions,
	 it would still be better to reject them here so that we can
	 provide a superior diagnostic.  */
      if (!FUNC33 (FUNC7 (expr), type))
	{
	  /* Make sure we are just one standard conversion off.  */
	  FUNC25 (FUNC17 (type, FUNC7 (expr)));
	  FUNC20 ("%qE is not a valid template argument for type %qT "
		 "because it is of type %qT", expr, type,
		 FUNC7 (expr));
	  FUNC27 ("standard conversions are not allowed in this context");
	  return NULL_TREE;
	}
    }
  /* [temp.arg.nontype]/5, bullet 7

     For a non-type template-parameter of type pointer to data member,
     qualification conversions (_conv.qual_) are applied.  */
  else if (FUNC10 (type))
    {
      expr = FUNC30 (type, expr);
      if (expr == error_mark_node)
	return expr;
    }
  /* A template non-type parameter must be one of the above.  */
  else
    FUNC26 ();

  /* Sanity check: did we actually convert the argument to the
     right type?  */
  FUNC25 (FUNC33 (type, FUNC7 (expr)));
  return expr;
}