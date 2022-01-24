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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int pid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int ULONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  I386_EFLAGS_REGNUM ; 
 int PT_CONTINUE ; 
 int PT_STEP ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6 (ptid_t ptid, int step, enum target_signal signal)
{
  pid_t pid = FUNC1 (ptid);
  int request = PT_STEP;

  if (pid == -1)
    /* Resume all threads.  This only gets used in the non-threaded
       case, where "resume all threads" and "resume inferior_ptid" are
       the same.  */
    pid = FUNC1 (inferior_ptid);

  if (!step)
    {
      ULONGEST eflags;

      /* Workaround for a bug in FreeBSD.  Make sure that the trace
 	 flag is off when doing a continue.  There is a code path
 	 through the kernel which leaves the flag set when it should
 	 have been cleared.  If a process has a signal pending (such
 	 as SIGALRM) and we do a PT_STEP, the process never really has
 	 a chance to run because the kernel needs to notify the
 	 debugger that a signal is being sent.  Therefore, the process
 	 never goes through the kernel's trap() function which would
 	 normally clear it.  */

      FUNC3 (current_regcache, I386_EFLAGS_REGNUM,
				     &eflags);
      if (eflags & 0x0100)
	FUNC4 (current_regcache, I386_EFLAGS_REGNUM,
					eflags & ~0x0100);

      request = PT_CONTINUE;
    }

  /* An addres of (caddr_t) 1 tells ptrace to continue from where it
     was.  (If GDB wanted it to start some other way, we have already
     written a new PC value to the child.)  */
  if (FUNC2 (request, pid, (caddr_t) 1,
	      FUNC5 (signal)) == -1)
    FUNC0 ("ptrace");
}