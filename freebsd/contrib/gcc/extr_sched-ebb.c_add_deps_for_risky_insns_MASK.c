#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum DEPS_ADJUST_RESULT { ____Placeholder_DEPS_ADJUST_RESULT } DEPS_ADJUST_RESULT ;
typedef  TYPE_1__* basic_block ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {struct TYPE_7__* aux; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BEGIN_CONTROL ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DEP_ANTI ; 
 int DEP_CHANGED ; 
 int DEP_CREATED ; 
 int DO_SPECULATION ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  IRISKY 131 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  MAX_DEP_WEAK ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
#define  PFREE_CANDIDATE 130 
#define  PRISKY_CANDIDATE 129 
 int /*<<< orphan*/  REG_DEP_ANTI ; 
#define  TRAP_RISKY 128 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 TYPE_4__* current_sched_info ; 
 TYPE_1__* FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  flag_schedule_speculative_load ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (rtx head, rtx tail)
{
  rtx insn, prev;
  int class;
  rtx last_jump = NULL_RTX;
  rtx next_tail = FUNC4 (tail);
  basic_block last_block = NULL, bb;

  for (insn = head; insn != next_tail; insn = FUNC4 (insn))
    if (FUNC8 (insn))
      {
	bb = FUNC1 (insn);
	bb->aux = last_block;
	last_block = bb;
	last_jump = insn;
      }
    else if (FUNC2 (insn) && last_jump != NULL_RTX)
      {
	class = FUNC11 (insn);
	prev = last_jump;
	switch (class)
	  {
	  case PFREE_CANDIDATE:
	    if (flag_schedule_speculative_load)
	      {
		bb = FUNC9 (last_block, insn);
		if (bb)
		  {
		    bb = bb->aux;
		    if (!bb)
		      break;
		    prev = FUNC0 (bb);
		  }
	      }
	    /* Fall through.  */
	  case TRAP_RISKY:
	  case IRISKY:
	  case PRISKY_CANDIDATE:
	    /* ??? We could implement better checking PRISKY_CANDIDATEs
	       analogous to sched-rgn.c.  */
	    /* We can not change the mode of the backward
	       dependency because REG_DEP_ANTI has the lowest
	       rank.  */
	    if (! FUNC12 (insn, prev))
	      {
		if (!(current_sched_info->flags & DO_SPECULATION))
		  {
		    enum DEPS_ADJUST_RESULT res;
		    
		    res = FUNC6 (insn, prev,
						  REG_DEP_ANTI, DEP_ANTI);

		    if (res == DEP_CREATED)
		      FUNC5 (insn, FUNC3 (insn));
		    else
		      FUNC10 (res != DEP_CHANGED);
		  }
		else
		  FUNC7 (insn, prev, REG_DEP_ANTI,
					       FUNC13 (DEP_ANTI,
							     BEGIN_CONTROL,
							     MAX_DEP_WEAK));
	      }

            break;

          default:
            break;
	  }
      }
  /* Maintain the invariant that bb->aux is clear after use.  */
  while (last_block)
    {
      bb = last_block->aux;
      last_block->aux = NULL;
      last_block = bb;
    }
}