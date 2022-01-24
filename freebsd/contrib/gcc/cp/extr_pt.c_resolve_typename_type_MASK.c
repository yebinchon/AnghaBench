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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TYPENAME_TYPE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int tf_error ; 
 int tf_user ; 

tree
FUNC16 (tree type, bool only_current_p)
{
  tree scope;
  tree name;
  tree decl;
  int quals;
  tree pushed_scope;

  FUNC11 (FUNC2 (type) == TYPENAME_TYPE);

  scope = FUNC6 (type);
  name = FUNC7 (type);

  /* If the SCOPE is itself a TYPENAME_TYPE, then we need to resolve
     it first before we can figure out what NAME refers to.  */
  if (FUNC2 (scope) == TYPENAME_TYPE)
    scope = FUNC16 (scope, only_current_p);
  /* If we don't know what SCOPE refers to, then we cannot resolve the
     TYPENAME_TYPE.  */
  if (scope == error_mark_node || FUNC2 (scope) == TYPENAME_TYPE)
    return error_mark_node;
  /* If the SCOPE is a template type parameter, we have no way of
     resolving the name.  */
  if (FUNC2 (scope) == TEMPLATE_TYPE_PARM)
    return type;
  /* If the SCOPE is not the current instantiation, there's no reason
     to look inside it.  */
  if (only_current_p && !FUNC10 (scope))
    return error_mark_node;
  /* If SCOPE is a partial instantiation, it will not have a valid
     TYPE_FIELDS list, so use the original template.  */
  scope = FUNC0 (scope);
  /* Enter the SCOPE so that name lookup will be resolved as if we
     were in the class definition.  In particular, SCOPE will no
     longer be considered a dependent type.  */
  pushed_scope = FUNC15 (scope);
  /* Look up the declaration.  */
  decl = FUNC12 (scope, name, /*protect=*/0, /*want_type=*/true);
  /* Obtain the set of qualifiers applied to the TYPE.  */
  quals = FUNC9 (type);
  /* For a TYPENAME_TYPE like "typename X::template Y<T>", we want to
     find a TEMPLATE_DECL.  Otherwise, we want to find a TYPE_DECL.  */
  if (!decl)
    type = error_mark_node;
  else if (FUNC2 (FUNC5 (type)) == IDENTIFIER_NODE
	   && FUNC2 (decl) == TYPE_DECL)
    type = FUNC4 (decl);
  else if (FUNC2 (FUNC5 (type)) == TEMPLATE_ID_EXPR
	   && FUNC1 (decl))
    {
      tree tmpl;
      tree args;
      /* Obtain the template and the arguments.  */
      tmpl = FUNC3 (FUNC5 (type), 0);
      args = FUNC3 (FUNC5 (type), 1);
      /* Instantiate the template.  */
      type = FUNC13 (tmpl, args, NULL_TREE, NULL_TREE,
				    /*entering_scope=*/0, tf_error | tf_user);
    }
  else
    type = error_mark_node;
  /* Qualify the resulting type.  */
  if (type != error_mark_node && quals)
    type = FUNC8 (type, quals);
  /* Leave the SCOPE.  */
  if (pushed_scope)
    FUNC14 (pushed_scope);

  return type;
}