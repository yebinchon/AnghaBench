#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  port; } ;
struct TYPE_3__ {struct proc* task; } ;

/* Variables and functions */
 TYPE_1__* current_inferior ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  struct proc *task = current_inferior->task;
  if (task)
    {
      FUNC1 (task, "terminating...");
      FUNC3 (task->port);
      FUNC0 (current_inferior, -1);
    }
  FUNC2 ();
}