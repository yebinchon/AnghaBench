#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_address_t ;
struct TYPE_3__ {int suspend_count; } ;
struct procinfo {TYPE_1__ taskinfo; } ;
struct inf {TYPE_2__* task; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  procinfo_t ;
typedef  scalar_t__ mach_msg_type_number_t ;
typedef  scalar_t__ error_t ;
struct TYPE_4__ {int dead; int cur_sc; } ;

/* Variables and functions */
 int PI_FETCH_TASKINFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,scalar_t__*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  proc_server ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (struct inf *inf)
{
  char *noise;
  mach_msg_type_number_t noise_len = 0;
  struct procinfo *pi;
  mach_msg_type_number_t pi_len = 0;
  int info_flags = PI_FETCH_TASKINFO;
  int suspend_count = -1;
  error_t err;

 retry:
  err = FUNC2 (proc_server, inf->pid, &info_flags,
			  (procinfo_t *) &pi, &pi_len, &noise, &noise_len);
  if (err)
    {
      inf->task->dead = 1; /* oh well */
      return;
    }

  if (inf->task->cur_sc < pi->taskinfo.suspend_count && suspend_count == -1)
    {
      /* The proc server might have suspended the task while stopping
         it.  This happens when the task is handling a traced signal.
         Refetch the suspend count.  The proc server should be
         finished stopping the task by now.  */
      suspend_count = pi->taskinfo.suspend_count;
      goto retry;
    }

  suspend_count = pi->taskinfo.suspend_count;

  FUNC6 (FUNC1 (), (vm_address_t) pi, pi_len);
  if (noise_len > 0)
    FUNC6 (FUNC1 (), (vm_address_t) pi, pi_len);

  if (inf->task->cur_sc < suspend_count)
    {
      int abort;

      FUNC5 ();	/* Allow I/O.  */
      abort = !FUNC3 ("Pid %d has an additional task suspend count of %d;"
		      " clear it? ", inf->pid,
		      suspend_count - inf->task->cur_sc);
      FUNC4 ();	/* Give it back to the child.  */

      if (abort)
	FUNC0 ("Additional task suspend count left untouched.");

      inf->task->cur_sc = suspend_count;
    }
}