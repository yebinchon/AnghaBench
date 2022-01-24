#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dwarf1_unit {unsigned long low_pc; unsigned long high_pc; unsigned long line_count; char* name; struct dwarf1_func* func_list; TYPE_1__* linenumber_table; scalar_t__ has_stmt_list; } ;
struct dwarf1_func {unsigned long low_pc; unsigned long high_pc; char* name; struct dwarf1_func* prev; } ;
struct dwarf1_debug {int dummy; } ;
typedef  int bfd_boolean ;
struct TYPE_2__ {unsigned long addr; unsigned int linenumber; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct dwarf1_debug*,struct dwarf1_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwarf1_debug*,struct dwarf1_unit*) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (struct dwarf1_debug* stash,
			       struct dwarf1_unit* aUnit,
			       unsigned long addr,
			       const char **filename_ptr,
			       const char **functionname_ptr,
			       unsigned int *linenumber_ptr)
{
  int line_p = FALSE;
  int func_p = FALSE;

  if (aUnit->low_pc <= addr && addr < aUnit->high_pc)
    {
      if (aUnit->has_stmt_list)
	{
	  unsigned long i;
	  struct dwarf1_func* eachFunc;

	  if (! aUnit->linenumber_table)
	    {
	      if (! FUNC1 (stash, aUnit))
		return FALSE;
	    }

	  if (! aUnit->func_list)
	    {
	      if (! FUNC0 (stash, aUnit))
		return FALSE;
	    }

	  for (i = 0; i < aUnit->line_count; i++)
	    {
	      if (aUnit->linenumber_table[i].addr <= addr
		  && addr < aUnit->linenumber_table[i+1].addr)
		{
		  *filename_ptr = aUnit->name;
		  *linenumber_ptr = aUnit->linenumber_table[i].linenumber;
		  line_p = TRUE;
		  break;
		}
	    }

	  for (eachFunc = aUnit->func_list;
	       eachFunc;
	       eachFunc = eachFunc->prev)
	    {
	      if (eachFunc->low_pc <= addr
		  && addr < eachFunc->high_pc)
		{
		  *functionname_ptr = eachFunc->name;
		  func_p = TRUE;
		  break;
		}
	    }
	}
    }

  return line_p || func_p;
}