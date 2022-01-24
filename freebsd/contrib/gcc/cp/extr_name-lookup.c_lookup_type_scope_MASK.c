#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ tag_scope ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ this_entity; struct cp_binding_level* level_chain; } ;
struct TYPE_7__ {struct cp_binding_level* scope; scalar_t__ value; scalar_t__ type; } ;
typedef  TYPE_1__ cxx_binding ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOOKUP_PREFER_TYPES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 struct cp_binding_level* current_binding_level ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC7 (scalar_t__,TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ sk_class ; 
 scalar_t__ sk_cleanup ; 
 scalar_t__ sk_namespace ; 
 scalar_t__ sk_template_parms ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ts_current ; 
 scalar_t__ ts_within_enclosing_non_class ; 

tree
FUNC10 (tree name, tag_scope scope)
{
  cxx_binding *iter = NULL;
  tree val = NULL_TREE;

  FUNC9 (TV_NAME_LOOKUP);

  /* Look in non-namespace scope first.  */
  if (current_binding_level->kind != sk_namespace)
    iter = FUNC7 (name, NULL, /*class_p=*/ true);
  for (; iter; iter = FUNC7 (name, iter, /*class_p=*/ true))
    {
      /* Check if this is the kind of thing we're looking for.
	 If SCOPE is TS_CURRENT, also make sure it doesn't come from
	 base class.  For ITER->VALUE, we can simply use
	 INHERITED_VALUE_BINDING_P.  For ITER->TYPE, we have to use
	 our own check.

	 We check ITER->TYPE before ITER->VALUE in order to handle
	   typedef struct C {} C;
	 correctly.  */

      if (FUNC8 (iter->type, LOOKUP_PREFER_TYPES)
	  && (scope != ts_current
	      || FUNC2 (iter)
	      || FUNC0 (iter->type) == iter->scope->this_entity))
	val = iter->type;
      else if ((scope != ts_current
		|| !FUNC1 (iter))
	       && FUNC8 (iter->value, LOOKUP_PREFER_TYPES))
	val = iter->value;

      if (val)
	break;
    }

  /* Look in namespace scope.  */
  if (!val)
    {
      iter = FUNC6
	       (FUNC3 (FUNC5 ()), name);

      if (iter)
	{
	  /* If this is the kind of thing we're looking for, we're done.  */
	  if (FUNC8 (iter->type, LOOKUP_PREFER_TYPES))
	    val = iter->type;
	  else if (FUNC8 (iter->value, LOOKUP_PREFER_TYPES))
	    val = iter->value;
	}

    }

  /* Type found, check if it is in the allowed scopes, ignoring cleanup
     and template parameter scopes.  */
  if (val)
    {
      struct cp_binding_level *b = current_binding_level;
      while (b)
	{
	  if (iter->scope == b)
	    FUNC4 (TV_NAME_LOOKUP, val);

	  if (b->kind == sk_cleanup || b->kind == sk_template_parms)
	    b = b->level_chain;
	  else if (b->kind == sk_class
		   && scope == ts_within_enclosing_non_class)
	    b = b->level_chain;
	  else
	    break;
	}
    }

  FUNC4 (TV_NAME_LOOKUP, NULL_TREE);
}