#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  tid; TYPE_1__* inf; } ;
struct TYPE_2__ {int pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 

char *
FUNC4 (struct proc *proc)
{
  static char tid_str[80];
  if (FUNC2 (proc))
    FUNC3 (tid_str, "process %d", proc->inf->pid);
  else
    FUNC3 (tid_str, "thread %d.%d",
	     proc->inf->pid, FUNC1 (FUNC0 (proc->tid, 0)));
  return tid_str;
}