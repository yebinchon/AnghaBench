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
struct modifies_mem {struct modifies_mem* next; int /*<<< orphan*/  insn; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_mem_conflicts ; 
 scalar_t__ mems_conflict_p ; 
 struct modifies_mem* modifies_mem_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (int uid_limit, rtx x, bool after_insn)
{
  struct modifies_mem *list_entry = modifies_mem_list;

  while (list_entry)
    {
      rtx setter = list_entry->insn;

      /* Ignore entries in the list that do not apply.  */
      if ((after_insn
	   && FUNC1 (setter) < uid_limit)
	  || (! after_insn
	      && FUNC1 (setter) > uid_limit))
	{
	  list_entry = list_entry->next;
	  continue;
	}

      /* If SETTER is a call everything is clobbered.  Note that calls
	 to pure functions are never put on the list, so we need not
	 worry about them.  */
      if (FUNC0 (setter))
	return 1;

      /* SETTER must be an insn of some kind that sets memory.  Call
	 note_stores to examine each hunk of memory that is modified.
	 It will set mems_conflict_p to nonzero if there may be a
	 conflict between X and SETTER.  */
      mems_conflict_p = 0;
      FUNC3 (FUNC2 (setter), find_mem_conflicts, x);
      if (mems_conflict_p)
	return 1;

      list_entry = list_entry->next;
    }
  return 0;
}