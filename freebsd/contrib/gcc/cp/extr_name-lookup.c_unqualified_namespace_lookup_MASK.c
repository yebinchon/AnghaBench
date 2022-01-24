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
struct scope_binding {scalar_t__ value; } ;
struct cp_binding_level {scalar_t__ kind; int /*<<< orphan*/  using_directives; struct cp_binding_level* level_chain; } ;
typedef  int /*<<< orphan*/  cxx_binding ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct scope_binding EMPTY_SCOPE_BINDING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 int /*<<< orphan*/  FUNC4 (struct scope_binding*,int /*<<< orphan*/ *,int) ; 
 struct cp_binding_level* current_binding_level ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ global_namespace ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct scope_binding*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ sk_namespace ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC9 (tree name, int flags)
{
  tree initial = FUNC5 ();
  tree scope = initial;
  tree siter;
  struct cp_binding_level *level;
  tree val = NULL_TREE;

  FUNC8 (TV_NAME_LOOKUP);

  for (; !val; scope = FUNC0 (scope))
    {
      struct scope_binding binding = EMPTY_SCOPE_BINDING;
      cxx_binding *b =
	 FUNC6 (FUNC2 (scope), name);

      if (b)
	/* LLVM LOCAL mainline */
	FUNC4 (&binding, b, flags);

      /* Add all _DECLs seen through local using-directives.  */
      for (level = current_binding_level;
	   level->kind != sk_namespace;
	   level = level->level_chain)
	if (!FUNC7 (name, &binding, level->using_directives,
				     scope, flags))
	  /* Give up because of error.  */
	  FUNC3 (TV_NAME_LOOKUP, error_mark_node);

      /* Add all _DECLs seen through global using-directives.  */
      /* XXX local and global using lists should work equally.  */
      siter = initial;
      while (1)
	{
	  if (!FUNC7 (name, &binding,
				       FUNC1 (siter),
				       scope, flags))
	    /* Give up because of error.  */
	    FUNC3 (TV_NAME_LOOKUP, error_mark_node);
	  if (siter == scope) break;
	  siter = FUNC0 (siter);
	}

      val = binding.value;
      if (scope == global_namespace)
	break;
    }
  FUNC3 (TV_NAME_LOOKUP, val);
}