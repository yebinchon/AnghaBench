#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct du_chain {scalar_t__ insn; struct du_chain* next_use; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_3__* basic_block ;
struct TYPE_7__ {TYPE_1__* rtl; } ;
struct TYPE_8__ {TYPE_2__ il; } ;
struct TYPE_6__ {int /*<<< orphan*/  global_live_at_start; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_UNUSED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  note_sets ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC9 (basic_block b, HARD_REG_SET *pset,
			struct du_chain *chain)
{
  struct du_chain *t = chain;
  rtx insn;
  HARD_REG_SET live;

  FUNC6 (live, b->il.rtl->global_live_at_start);
  insn = FUNC0 (b);
  while (t)
    {
      /* Search forward until the next reference to the register to be
	 renamed.  */
      while (insn != t->insn)
	{
	  if (FUNC1 (insn))
	    {
	      FUNC7 (&live, REG_DEAD, FUNC5 (insn));
	      FUNC8 (FUNC4 (insn), note_sets, (void *) &live);
	      /* Only record currently live regs if we are inside the
		 reg's live range.  */
	      if (t != chain)
		FUNC2 (*pset, live);
	      FUNC7 (&live, REG_UNUSED, FUNC5 (insn));
	    }
	  insn = FUNC3 (insn);
	}

      FUNC2 (*pset, live);

      /* For the last reference, also merge in all registers set in the
	 same insn.
	 @@@ We only have take earlyclobbered sets into account.  */
      if (! t->next_use)
	FUNC8 (FUNC4 (insn), note_sets, (void *) pset);

      t = t->next_use;
    }
}