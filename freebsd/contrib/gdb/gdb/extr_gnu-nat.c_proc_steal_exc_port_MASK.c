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
struct proc {scalar_t__ exc_port; scalar_t__ saved_exc_port; } ;
typedef  scalar_t__ mach_port_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct proc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8 (struct proc *proc, mach_port_t exc_port)
{
  mach_port_t cur_exc_port = FUNC0 (proc);

  if (cur_exc_port)
    {
      error_t err = 0;

      FUNC3 (proc, "inserting exception port: %d", exc_port);

      if (cur_exc_port != exc_port)
	/* Put in our exception port.  */
	err = FUNC4 (proc, exc_port);

      if (err || cur_exc_port == proc->exc_port)
	/* We previously set the exception port, and it's still set.  So we
	   just keep the old saved port which is what the proc set.  */
	{
	  if (cur_exc_port)
	    FUNC1 (FUNC2 (), cur_exc_port);
	}
      else
	/* Keep a copy of PROC's old exception port so it can be restored. */
	{
	  if (proc->saved_exc_port)
	    FUNC1 (FUNC2 (), proc->saved_exc_port);
	  proc->saved_exc_port = cur_exc_port;
	}

      FUNC3 (proc, "saved exception port: %d", proc->saved_exc_port);

      if (!err)
	proc->exc_port = exc_port;
      else
	FUNC7 ("Error setting exception port for %s: %s",
		 FUNC5 (proc), FUNC6 (err));
    }
}