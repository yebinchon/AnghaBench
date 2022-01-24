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
struct proc {void* saved_exc_port; void* exc_port; } ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 void* MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct proc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static mach_port_t
FUNC3 (struct proc *proc)
{
  mach_port_t exc_port;
  error_t err = FUNC2 (proc, &exc_port);

  if (err)
    /* PROC must be dead.  */
    {
      if (proc->exc_port)
	FUNC0 (FUNC1 (), proc->exc_port);
      proc->exc_port = MACH_PORT_NULL;
      if (proc->saved_exc_port)
	FUNC0 (FUNC1 (), proc->saved_exc_port);
      proc->saved_exc_port = MACH_PORT_NULL;
    }

  return exc_port;
}