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
typedef  int /*<<< orphan*/  u64 ;
struct task_desc {unsigned long nr_events; struct sched_atom** atoms; } ;
struct sched_atom {unsigned long nr; int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sched_atom** FUNC1 (struct sched_atom**,size_t) ; 
 struct sched_atom* FUNC2 (int) ; 

__attribute__((used)) static struct sched_atom *
FUNC3(struct task_desc *task, u64 timestamp)
{
	struct sched_atom *event = FUNC2(sizeof(*event));
	unsigned long idx = task->nr_events;
	size_t size;

	event->timestamp = timestamp;
	event->nr = idx;

	task->nr_events++;
	size = sizeof(struct sched_atom *) * task->nr_events;
	task->atoms = FUNC1(task->atoms, size);
	FUNC0(!task->atoms);

	task->atoms[idx] = event;

	return event;
}