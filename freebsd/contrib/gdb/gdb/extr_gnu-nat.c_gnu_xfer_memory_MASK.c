#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ task_t ;
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct TYPE_5__ {TYPE_1__* task; } ;
struct TYPE_4__ {scalar_t__ port; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 TYPE_2__* current_inferior ; 
 int FUNC0 (scalar_t__,scalar_t__,char*,int) ; 
 int FUNC1 (scalar_t__,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,void*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC3 (CORE_ADDR memaddr, char *myaddr, int len, int write,
		 struct mem_attrib *attrib,
		 struct target_ops *target)
{
  task_t task = (current_inferior
		 ? (current_inferior->task
		    ? current_inferior->task->port : 0)
		 : 0);

  if (task == MACH_PORT_NULL)
    return 0;
  else
    {
      FUNC2 (current_inferior, "%s %p[%d] %s %p",
		 write ? "writing" : "reading", (void *) memaddr, len,
		 write ? "<--" : "-->", myaddr);
      if (write)
	return FUNC1 (task, memaddr, myaddr, len);
      else
	return FUNC0 (task, memaddr, myaddr, len);
    }
}