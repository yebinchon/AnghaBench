#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* rtx ;
typedef  TYPE_3__* basic_block ;
struct TYPE_15__ {int /*<<< orphan*/  prev_bb; } ;
struct TYPE_13__ {TYPE_1__* rtl; } ;
struct TYPE_14__ {TYPE_2__ il; } ;
struct TYPE_12__ {void* global_live_at_end; void* global_live_at_start; void* footer; void* header; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 void* FUNC2 (TYPE_3__*) ; 
 void* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 TYPE_7__* EXIT_BLOCK_PTR ; 
 void* FUNC5 (void*) ; 
 TYPE_3__* FUNC6 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,void*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  reg_obstack ; 
 void* FUNC9 (void*,int /*<<< orphan*/ *) ; 

basic_block
FUNC10 (basic_block bb)
{
  rtx insn;
  basic_block new_bb;

  insn = FUNC7 (FUNC3 (bb), FUNC2 (bb));
  new_bb = FUNC6 (insn,
			       insn ? FUNC8 () : NULL,
			       EXIT_BLOCK_PTR->prev_bb);

  FUNC1 (new_bb, bb);
  if (bb->il.rtl->header)
    {
      insn = bb->il.rtl->header;
      while (FUNC5 (insn))
	insn = FUNC5 (insn);
      insn = FUNC7 (bb->il.rtl->header, insn);
      if (insn)
	new_bb->il.rtl->header = FUNC9 (insn, FUNC8 ());
    }

  if (bb->il.rtl->footer)
    {
      insn = bb->il.rtl->footer;
      while (FUNC5 (insn))
	insn = FUNC5 (insn);
      insn = FUNC7 (bb->il.rtl->footer, insn);
      if (insn)
	new_bb->il.rtl->footer = FUNC9 (insn, FUNC8 ());
    }

  if (bb->il.rtl->global_live_at_start)
    {
      new_bb->il.rtl->global_live_at_start = FUNC0 (&reg_obstack);
      new_bb->il.rtl->global_live_at_end = FUNC0 (&reg_obstack);
      FUNC4 (new_bb->il.rtl->global_live_at_start,
		    bb->il.rtl->global_live_at_start);
      FUNC4 (new_bb->il.rtl->global_live_at_end,
		    bb->il.rtl->global_live_at_end);
    }

  return new_bb;
}