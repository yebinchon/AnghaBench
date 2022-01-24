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
struct cp_binding_level {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 int PUSH_USING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cp_binding_level*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cp_binding_level* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cp_binding_level*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8 (tree id, tree decl, int flags)
{
  struct cp_binding_level *b;

  /* Skip over any local classes.  This makes sense if we call
     push_local_binding with a friend decl of a local class.  */
  b = FUNC4 ();

  if (FUNC5 (id))
    {
      /* Supplement the existing binding.  */
      if (!FUNC7 (FUNC0 (id), decl))
	/* It didn't work.  Something else must be bound at this
	   level.  Do not add DECL to the list of things to pop
	   later.  */
	return;
    }
  else
    /* Create a new binding.  */
    FUNC6 (id, decl, b);

  if (FUNC1 (decl) == OVERLOAD || (flags & PUSH_USING))
    /* We must put the OVERLOAD into a TREE_LIST since the
       TREE_CHAIN of an OVERLOAD is already used.  Similarly for
       decls that got here through a using-declaration.  */
    decl = FUNC3 (NULL_TREE, decl);

  /* And put DECL on the list of things declared by the current
     binding level.  */
  FUNC2 (decl, b);
}