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
struct funcinfo {scalar_t__ tag; } ;
struct dwarf2_debug {struct funcinfo* inliner_chain; } ;
struct comp_unit {int error; scalar_t__ first_child_die_ptr; scalar_t__ end_ptr; scalar_t__ line_table; int /*<<< orphan*/  stmtlist; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_boolean ;

/* Variables and functions */
 scalar_t__ DW_TAG_inlined_subroutine ; 
 int FALSE ; 
 scalar_t__ FUNC0 (struct comp_unit*,struct dwarf2_debug*) ; 
 int FUNC1 (struct comp_unit*,int /*<<< orphan*/ ,struct funcinfo**,char const**) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct funcinfo*,char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct comp_unit*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct comp_unit *unit,
			     bfd_vma addr,
			     const char **filename_ptr,
			     const char **functionname_ptr,
			     unsigned int *linenumber_ptr,
			     struct dwarf2_debug *stash)
{
  bfd_boolean line_p;
  bfd_boolean func_p;
  struct funcinfo *function;

  if (unit->error)
    return FALSE;

  if (! unit->line_table)
    {
      if (! unit->stmtlist)
	{
	  unit->error = 1;
	  return FALSE;
	}

      unit->line_table = FUNC0 (unit, stash);

      if (! unit->line_table)
	{
	  unit->error = 1;
	  return FALSE;
	}

      if (unit->first_child_die_ptr < unit->end_ptr
	  && ! FUNC3 (unit))
	{
	  unit->error = 1;
	  return FALSE;
	}
    }

  function = NULL;
  func_p = FUNC1 (unit, addr,
					     &function, functionname_ptr);
  if (func_p && (function->tag == DW_TAG_inlined_subroutine))
    stash->inliner_chain = function;
  line_p = FUNC2 (unit->line_table, addr,
					      function, filename_ptr,
					      linenumber_ptr);
  return line_p || func_p;
}