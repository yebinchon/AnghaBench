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
typedef  int tsubst_flags_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ BIT_NOT_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OFFSET_REF ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SCOPE_REF ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  current_class_type ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int tf_error ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static tree
FUNC23 (tree qualified_id, tree args,
		     tsubst_flags_t complain, tree in_decl,
		     bool done, bool address_p)
{
  tree expr;
  tree scope;
  tree name;
  bool is_template;
  tree template_args;

  FUNC14 (FUNC4 (qualified_id) == SCOPE_REF);

  /* Figure out what name to look up.  */
  name = FUNC5 (qualified_id, 1);
  if (FUNC4 (name) == TEMPLATE_ID_EXPR)
    {
      is_template = true;
      template_args = FUNC5 (name, 1);
      if (template_args)
	template_args = FUNC22 (template_args, args,
					      complain, in_decl);
      name = FUNC5 (name, 0);
    }
  else
    {
      is_template = false;
      template_args = NULL_TREE;
    }

  /* Substitute into the qualifying scope.  When there are no ARGS, we
     are just trying to simplify a non-dependent expression.  In that
     case the qualifying scope may be dependent, and, in any case,
     substituting will not help.  */
  scope = FUNC5 (qualified_id, 0);
  if (args)
    {
      scope = FUNC20 (scope, args, complain, in_decl);
      expr = FUNC21 (name, args, complain, in_decl);
    }
  else
    expr = name;

  if (FUNC11 (scope))
    return FUNC8 (/*type=*/NULL_TREE,
				 scope, expr,
				 FUNC3 (qualified_id));

  if (!FUNC0 (name) && !FUNC1 (expr))
    {
      if (FUNC4 (expr) == BIT_NOT_EXPR)
	/* If this were actually a destructor call, it would have been
	   parsed as such by the parser.  */
	expr = error_mark_node;
      else
	expr = FUNC16 (scope, expr, /*is_type_p=*/0, false);
      if (FUNC4 (FUNC4 (expr) == TEMPLATE_DECL
		     ? FUNC2 (expr) : expr) == TYPE_DECL)
	{
	  if (complain & tf_error)
	    {
	      FUNC12 ("dependent-name %qE is parsed as a non-type, but "
		     "instantiation yields a type", qualified_id);
	      FUNC15 ("say %<typename %E%> if a type is meant", qualified_id);
	    }
	  return error_mark_node;
	}
    }

  if (FUNC1 (expr))
    {
      FUNC9 (expr, /*object_type=*/NULL_TREE,
					   scope);
      /* Remember that there was a reference to this entity.  */
      FUNC18 (expr);
    }

  if (expr == error_mark_node || FUNC4 (expr) == TREE_LIST)
    {
      if (complain & tf_error)
	FUNC19 (scope,
				     FUNC5 (qualified_id, 1),
				     expr);
      return error_mark_node;
    }

  if (is_template)
    expr = FUNC17 (expr, template_args);

  if (expr == error_mark_node && complain & tf_error)
    FUNC19 (scope, FUNC5 (qualified_id, 1),
				 expr);
  else if (FUNC6 (scope))
    {
      expr = (FUNC7
	      (expr, scope, current_class_type));
      expr = (FUNC13
	      (scope, expr, done, address_p,
	       FUNC3 (qualified_id),
	       /*template_arg_p=*/false));
    }

  /* Expressions do not generally have reference type.  */
  if (FUNC4 (expr) != SCOPE_REF
      /* However, if we're about to form a pointer-to-member, we just
	 want the referenced member referenced.  */
      && FUNC4 (expr) != OFFSET_REF)
    expr = FUNC10 (expr);

  return expr;
}