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
struct proc {int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

error_t
FUNC4 (struct proc * proc, mach_port_t port)
{
  FUNC0 (proc, "setting exception port: %d", port);
  if (FUNC1 (proc))
    return FUNC2 (proc->port, port);
  else
    return FUNC3 (proc->port, port);
}