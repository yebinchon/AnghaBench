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
struct proc {scalar_t__ exc_port; void* saved_exc_port; } ;
typedef  scalar_t__ mach_port_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 void* MACH_PORT_NULL ; 
 scalar_t__ FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,char*) ; 
 scalar_t__ FUNC4 (struct proc*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8 (struct proc *proc)
{
  mach_port_t cur_exc_port = FUNC0 (proc);

  if (cur_exc_port)
    {
      error_t err = 0;

      FUNC3 (proc, "restoring real exception port");

      if (proc->exc_port == cur_exc_port)
	/* Our's is still there.  */
	err = FUNC4 (proc, proc->saved_exc_port);

      if (proc->saved_exc_port)
	FUNC1 (FUNC2 (), proc->saved_exc_port);
      proc->saved_exc_port = MACH_PORT_NULL;

      if (!err)
	proc->exc_port = MACH_PORT_NULL;
      else
	FUNC7 ("Error setting exception port for %s: %s",
		 FUNC5 (proc), FUNC6 (err));
    }
}