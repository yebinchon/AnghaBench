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
struct scope_binding {scalar_t__ value; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  cxx_binding ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 int /*<<< orphan*/  FUNC7 (struct scope_binding*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC13 (tree name, tree scope,
				  struct scope_binding *result, int flags)
{
  /* Maintain a list of namespaces visited...  */
  tree seen = NULL_TREE;
  /* ... and a list of namespace yet to see.  */
  tree todo = NULL_TREE;
  tree todo_maybe = NULL_TREE;
  tree usings;
  FUNC11 (TV_NAME_LOOKUP);
  /* Look through namespace aliases.  */
  scope = FUNC2 (scope);
  while (scope && result->value != error_mark_node)
    {
      cxx_binding *binding =
	FUNC8 (FUNC1 (scope), name);
      seen = FUNC12 (scope, NULL_TREE, seen);
      if (binding)
	/* LLVM LOCAL mainline */
	FUNC7 (result, binding, flags);

      /* Consider strong using directives always, and non-strong ones
	 if we haven't found a binding yet.  ??? Shouldn't we consider
	 non-strong ones if the initial RESULT is non-NULL, but the
	 binding in the given namespace is?  */
      for (usings = FUNC0 (scope); usings;
	   usings = FUNC4 (usings))
	/* If this was a real directive, and we have not seen it.  */
	if (!FUNC5 (usings))
	  {
	    /* Try to avoid queuing the same namespace more than once,
	       the exception being when a namespace was already
	       enqueued for todo_maybe and then a strong using is
	       found for it.  We could try to remove it from
	       todo_maybe, but it's probably not worth the effort.  */
	    if (FUNC9 (scope, FUNC6 (usings))
		&& !FUNC10 (FUNC6 (usings), seen)
		&& !FUNC10 (FUNC6 (usings), todo))
	      todo = FUNC12 (FUNC6 (usings), NULL_TREE, todo);
	    else if ((!result->value && !result->type)
		     && !FUNC10 (FUNC6 (usings), seen)
		     && !FUNC10 (FUNC6 (usings), todo)
		     && !FUNC10 (FUNC6 (usings), todo_maybe))
	      todo_maybe = FUNC12 (FUNC6 (usings), NULL_TREE,
				      todo_maybe);
	  }
      if (todo)
	{
	  scope = FUNC6 (todo);
	  todo = FUNC4 (todo);
	}
      else if (todo_maybe
	       && (!result->value && !result->type))
	{
	  scope = FUNC6 (todo_maybe);
	  todo = FUNC4 (todo_maybe);
	  todo_maybe = NULL_TREE;
	}
      else
	scope = NULL_TREE; /* If there never was a todo list.  */
    }
  FUNC3 (TV_NAME_LOOKUP, result->value != error_mark_node);
}