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
struct z_candidate {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DEDUCE_CALL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TEMPLATE_DECL ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (tree fns, tree args,
		tree explicit_targs, bool template_only,
		tree conversion_path, tree access_path,
		int flags,
		struct z_candidate **candidates)
{
  tree ctype;
  tree non_static_args;

  ctype = conversion_path ? FUNC0 (conversion_path) : NULL_TREE;
  /* Delay creating the implicit this parameter until it is needed.  */
  non_static_args = NULL_TREE;

  while (fns)
    {
      tree fn;
      tree fn_args;

      fn = FUNC2 (fns);
      /* Figure out which set of arguments to use.  */
      if (FUNC1 (fn))
	{
	  /* If this function is a non-static member, prepend the implicit
	     object parameter.  */
	  if (!non_static_args)
	    non_static_args = FUNC10 (NULL_TREE,
					 FUNC9 (FUNC6 (args)),
					 FUNC4 (args));
	  fn_args = non_static_args;
	}
      else
	/* Otherwise, just use the list of arguments provided.  */
	fn_args = args;

      if (FUNC5 (fn) == TEMPLATE_DECL)
	FUNC8 (candidates,
				fn,
				ctype,
				explicit_targs,
				fn_args,
				NULL_TREE,
				access_path,
				conversion_path,
				flags,
				DEDUCE_CALL);
      else if (!template_only)
	FUNC7 (candidates,
				fn,
				ctype,
				fn_args,
				access_path,
				conversion_path,
				flags);
      fns = FUNC3 (fns);
    }
}