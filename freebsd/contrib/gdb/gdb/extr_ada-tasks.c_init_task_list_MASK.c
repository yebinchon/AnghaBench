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
struct task_entry {struct task_entry* next_task; } ;

/* Variables and functions */
 scalar_t__ highest_task_num ; 
 struct task_entry* task_list ; 
 int /*<<< orphan*/  FUNC0 (struct task_entry*) ; 

void
FUNC1 (void)
{
  struct task_entry *pt, *old_pt;

  pt = task_list;
  while (pt)
    {
      old_pt = pt;
      pt = pt->next_task;
      FUNC0 (old_pt);
    };
  task_list = NULL;
  highest_task_num = 0;
}