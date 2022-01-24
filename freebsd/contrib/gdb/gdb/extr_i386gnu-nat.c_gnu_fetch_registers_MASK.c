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
typedef  int /*<<< orphan*/  thread_state_t ;
struct proc {int fetched_regs; } ;

/* Variables and functions */
 int I386_NUM_GREGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_inferior ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 struct proc* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

void
FUNC12 (int regno)
{
  struct proc *thread;

  /* Make sure we know about new threads.  */
  FUNC6 (current_inferior);

  thread = FUNC5 (current_inferior, FUNC0 (inferior_ptid));
  if (!thread)
    FUNC3 ("Can't fetch registers from thread %d: No such thread",
	   FUNC0 (inferior_ptid));

  if (regno < I386_NUM_GREGS || regno == -1)
    {
      thread_state_t state;

      /* This does the dirty work for us.  */
      state = FUNC8 (thread, 0);
      if (!state)
	{
	  FUNC11 ("Couldn't fetch registers from %s",
		   FUNC9 (thread));
	  return;
	}

      if (regno == -1)
	{
	  int i;

	  FUNC7 (thread, "fetching all register");

	  for (i = 0; i < I386_NUM_GREGS; i++)
	    FUNC10 (i, FUNC2 (state, i));
	  thread->fetched_regs = ~0;
	}
      else
	{
	  FUNC7 (thread, "fetching register %s", FUNC1 (regno));

	  FUNC10 (regno, FUNC2 (state, regno));
	  thread->fetched_regs |= (1 << regno);
	}
    }

  if (regno >= I386_NUM_GREGS || regno == -1)
    {
      FUNC7 (thread, "fetching floating-point registers");

      FUNC4 (thread);
    }
}