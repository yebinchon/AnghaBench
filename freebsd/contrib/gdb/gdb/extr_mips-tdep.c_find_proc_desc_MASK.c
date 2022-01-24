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
struct symtab_and_line {scalar_t__ pc; scalar_t__ end; } ;
struct symbol {int dummy; } ;
struct linked_proc_info {int /*<<< orphan*/  info; struct linked_proc_info* next; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/ * mips_extra_func_info_t ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct symbol* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*) ; 
 struct symtab_and_line FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,scalar_t__,struct frame_info*,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 struct linked_proc_info* linked_proc_desc_table ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static mips_extra_func_info_t
FUNC10 (CORE_ADDR pc, struct frame_info *next_frame, int cur_frame)
{
  mips_extra_func_info_t proc_desc;
  CORE_ADDR startaddr = 0;

  proc_desc = FUNC9 (pc, &startaddr);

  if (proc_desc)
    {
      /* IF this is the topmost frame AND
       * (this proc does not have debugging information OR
       * the PC is in the procedure prologue)
       * THEN create a "heuristic" proc_desc (by analyzing
       * the actual code) to replace the "official" proc_desc.
       */
      if (next_frame == NULL)
	{
	  struct symtab_and_line val;
	  struct symbol *proc_symbol =
	    FUNC1 (proc_desc) ? 0 : FUNC4 (proc_desc);

	  if (proc_symbol)
	    {
	      val = FUNC6 (FUNC0
				  (FUNC5 (proc_symbol)), 0);
	      val.pc = val.end ? val.end : pc;
	    }
	  if (!proc_symbol || pc < val.pc)
	    {
	      mips_extra_func_info_t found_heuristic =
		FUNC7 (FUNC3 (proc_desc),
				     pc, next_frame, cur_frame);
	      if (found_heuristic)
		proc_desc = found_heuristic;
	    }
	}
    }
  else
    {
      /* Is linked_proc_desc_table really necessary?  It only seems to be used
         by procedure call dummys.  However, the procedures being called ought
         to have their own proc_descs, and even if they don't,
         heuristic_proc_desc knows how to create them! */

      struct linked_proc_info *link;

      for (link = linked_proc_desc_table; link; link = link->next)
	if (FUNC3 (&link->info) <= pc
	    && FUNC2 (&link->info) > pc)
	  return &link->info;

      if (startaddr == 0)
	startaddr = FUNC8 (pc);

      proc_desc = FUNC7 (startaddr, pc, next_frame, cur_frame);
    }
  return proc_desc;
}