#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dwarf2_debug {int dummy; } ;
struct comp_unit {int error; scalar_t__ first_child_die_ptr; scalar_t__ end_ptr; scalar_t__ line_table; int /*<<< orphan*/  stmtlist; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 int BSF_FUNCTION ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (struct comp_unit*,struct dwarf2_debug*) ; 
 int /*<<< orphan*/  FUNC1 (struct comp_unit*,TYPE_1__*,int /*<<< orphan*/ ,char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct comp_unit*,TYPE_1__*,int /*<<< orphan*/ ,char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct comp_unit*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct comp_unit *unit,
		     asymbol *sym,
		     bfd_vma addr,
		     const char **filename_ptr,
		     unsigned int *linenumber_ptr,
		     struct dwarf2_debug *stash)
{
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

  if (sym->flags & BSF_FUNCTION)
    return FUNC1 (unit, sym, addr,
					    filename_ptr,
					    linenumber_ptr);
  else
    return FUNC2 (unit, sym, addr,
					    filename_ptr,
					    linenumber_ptr);
}