#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; struct cp_binding_level* level_chain; } ;
struct TYPE_4__ {scalar_t__ value; struct cp_binding_level* scope; } ;
typedef  TYPE_1__ cxx_binding ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 scalar_t__ VAR_DECL ; 
 struct cp_binding_level* FUNC7 () ; 
 scalar_t__ sk_cleanup ; 
 scalar_t__ sk_namespace ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC9 (tree name)
{
  struct cp_binding_level *b;
  tree t = NULL_TREE;

  FUNC8 (TV_NAME_LOOKUP);
  b = FUNC7 ();

  if (b->kind == sk_namespace)
    {
      t = FUNC2 (name);

      /* extern "C" function() */
      if (t != NULL_TREE && FUNC5 (t) == TREE_LIST)
	t = FUNC6 (t);
    }
  else if (FUNC1 (name)
	   && FUNC3 (FUNC1 (name)))
    {
      cxx_binding *binding;
      binding = FUNC1 (name);
      while (1)
	{
	  if (binding->scope == b
	      && !(FUNC5 (binding->value) == VAR_DECL
		   && FUNC0 (binding->value)))
	    FUNC4 (TV_NAME_LOOKUP, binding->value);

	  if (b->kind == sk_cleanup)
	    b = b->level_chain;
	  else
	    break;
	}
    }

  FUNC4 (TV_NAME_LOOKUP, t);
}