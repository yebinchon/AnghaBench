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
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 size_t stack_vars_num ; 

__attribute__((used)) static void
FUNC10 (tree block, bool toplevel)
{
  size_t i, j, old_sv_num, this_sv_num, new_sv_num;
  tree t;

  old_sv_num = toplevel ? 0 : stack_vars_num;

  /* Expand all variables at this level.  */
  for (t = FUNC2 (block); t ; t = FUNC4 (t))
    if (FUNC6 (t)
	/* Force local static variables to be output when marked by
	   used attribute.  For unit-at-a-time, cgraph code already takes
	   care of this.  */
	|| (!flag_unit_at_a_time && FUNC5 (t)
	    && FUNC3 (t)))
      FUNC8 (t, toplevel);

  this_sv_num = stack_vars_num;

  /* Expand all variables at containing levels.  */
  for (t = FUNC1 (block); t ; t = FUNC0 (t))
    FUNC10 (t, false);

  /* Since we do not track exact variable lifetimes (which is not even
     possible for variables whose address escapes), we mirror the block
     tree in the interference graph.  Here we cause all variables at this
     level, and all sublevels, to conflict.  Do make certain that a
     variable conflicts with itself.  */
  if (old_sv_num < this_sv_num)
    {
      new_sv_num = stack_vars_num;
      FUNC9 (new_sv_num);

      for (i = old_sv_num; i < new_sv_num; ++i)
	for (j = i < this_sv_num ? i+1 : this_sv_num; j-- > old_sv_num ;)
	  FUNC7 (i, j);
    }
}