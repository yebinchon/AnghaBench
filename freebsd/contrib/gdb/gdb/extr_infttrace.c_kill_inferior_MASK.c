#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pid; struct TYPE_4__* next; scalar_t__ am_pseudo; } ;
typedef  TYPE_1__ thread_info ;
struct TYPE_5__ {int count; TYPE_1__* head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TT_NIL ; 
 int /*<<< orphan*/  TT_PROC_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ thread_head ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 scalar_t__ FUNC6 (int) ; 

void
FUNC7 (void)
{
  int tid;
  int wait_status;
  thread_info *t;
  thread_info **paranoia;
  int para_count, i;

  if (FUNC0 (inferior_ptid) == 0)
    return;

  /* Walk the list of "threads", some of which are "pseudo threads",
     aka "processes".  For each that is NOT inferior_ptid, stop it,
     and detach it.

     You see, we may not have just a single process to kill.  If we're
     restarting or quitting or detaching just after the inferior has
     forked, then we've actually two processes to clean up.

     But we can't just call target_mourn_inferior() for each, since that
     zaps the target vector.
   */

  paranoia = (thread_info **) FUNC6 (thread_head.count *
				       sizeof (thread_info *));
  para_count = 0;

  t = thread_head.head;
  while (t)
    {

      paranoia[para_count] = t;
      for (i = 0; i < para_count; i++)
	{
	  if (t->next == paranoia[i])
	    {
	      FUNC4 ("Bad data in gdb's thread data; repairing.");
	      t->next = 0;
	    }
	}
      para_count++;

      if (t->am_pseudo && (t->pid != FUNC0 (inferior_ptid)))
	{
	  FUNC1 (TT_PROC_EXIT,
		       t->pid,
		       TT_NIL,
		       TT_NIL,
		       TT_NIL);
	}
      t = t->next;
    }

  FUNC5 (paranoia);

  FUNC1 (TT_PROC_EXIT,
	       FUNC0 (inferior_ptid),
	       TT_NIL,
	       TT_NIL,
	       TT_NIL);
  FUNC3 ();
  FUNC2 ();
}