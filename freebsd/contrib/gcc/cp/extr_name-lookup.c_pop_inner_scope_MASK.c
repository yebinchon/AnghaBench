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
struct cp_binding_level {scalar_t__ kind; struct cp_binding_level* level_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct cp_binding_level* current_binding_level ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ sk_template_parms ; 

void
FUNC6 (tree outer, tree inner)
{
  if (outer == inner
      || (FUNC2 (inner) != NAMESPACE_DECL && !FUNC0 (inner)))
    return;

  while (outer != inner)
    {
      if (FUNC2 (inner) == NAMESPACE_DECL)
	{
	  struct cp_binding_level *save_template_parm = 0;
	  /* Temporary take out template parameter scopes.  They are saved
	     in reversed order in save_template_parm.  */
	  while (current_binding_level->kind == sk_template_parms)
	    {
	      struct cp_binding_level *b = current_binding_level;
	      current_binding_level = b->level_chain;
	      b->level_chain = save_template_parm;
	      save_template_parm = b;
	    }

	  FUNC4 ();

	  /* Restore template parameter scopes.  */
	  while (save_template_parm)
	    {
	      struct cp_binding_level *b = save_template_parm;
	      save_template_parm = b->level_chain;
	      b->level_chain = current_binding_level;
	      current_binding_level = b;
	    }
	}
      else
	FUNC5 ();

      inner = FUNC1 (FUNC2 (inner) == NAMESPACE_DECL ? inner : FUNC3 (inner));
    }
}