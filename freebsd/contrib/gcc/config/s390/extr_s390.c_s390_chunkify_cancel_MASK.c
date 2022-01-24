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
struct constant_pool {scalar_t__ pool_insn; struct constant_pool* next; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ BARRIER ; 
 scalar_t__ CODE_LABEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INSN ; 
 scalar_t__ JUMP_INSN ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_RELOAD_BASE ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ pc_rtx ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct constant_pool*) ; 

__attribute__((used)) static void
FUNC11 (struct constant_pool *pool_list)
{
  struct constant_pool *curr_pool = NULL;
  rtx insn;

  /* Remove all pool placeholder insns.  */

  for (curr_pool = pool_list; curr_pool; curr_pool = curr_pool->next)
    {
      /* Did we insert an extra barrier?  Remove it.  */
      rtx barrier = FUNC3 (curr_pool->pool_insn);
      rtx jump = barrier? FUNC3 (barrier) : NULL_RTX;
      rtx label = FUNC1 (curr_pool->pool_insn);

      if (jump && FUNC0 (jump) == JUMP_INSN
	  && barrier && FUNC0 (barrier) == BARRIER
	  && label && FUNC0 (label) == CODE_LABEL
	  && FUNC0 (FUNC2 (jump)) == SET
	  && FUNC4 (FUNC2 (jump)) == pc_rtx
	  && FUNC0 (FUNC5 (FUNC2 (jump))) == LABEL_REF
	  && FUNC6 (FUNC5 (FUNC2 (jump)), 0) == label)
	{
	  FUNC9 (jump);
	  FUNC9 (barrier);
	  FUNC9 (label);
	}

      FUNC9 (curr_pool->pool_insn);
    }

  /* Remove all base register reload insns.  */

  for (insn = FUNC8 (); insn; )
    {
      rtx next_insn = FUNC1 (insn);

      if (FUNC0 (insn) == INSN
	  && FUNC0 (FUNC2 (insn)) == SET
	  && FUNC0 (FUNC5 (FUNC2 (insn))) == UNSPEC
	  && FUNC7 (FUNC5 (FUNC2 (insn)), 1) == UNSPEC_RELOAD_BASE)
	FUNC9 (insn);

      insn = next_insn;
    }

  /* Free pool list.  */

  while (pool_list)
    {
      struct constant_pool *next = pool_list->next;
      FUNC10 (pool_list);
      pool_list = next;
    }
}