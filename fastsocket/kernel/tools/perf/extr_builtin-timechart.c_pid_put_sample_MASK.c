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
typedef  scalar_t__ u64 ;
struct per_pidcomm {scalar_t__ start_time; int /*<<< orphan*/  total_time; struct cpu_sample* samples; struct per_pidcomm* next; } ;
struct per_pid {scalar_t__ start_time; int /*<<< orphan*/  total_time; struct per_pidcomm* all; struct per_pidcomm* current; } ;
struct cpu_sample {int type; unsigned int cpu; struct cpu_sample* next; scalar_t__ end_time; scalar_t__ start_time; } ;

/* Variables and functions */
 int TYPE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct per_pid* FUNC1 (int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(int pid, int type, unsigned int cpu, u64 start, u64 end)
{
	struct per_pid *p;
	struct per_pidcomm *c;
	struct cpu_sample *sample;

	p = FUNC1(pid);
	c = p->current;
	if (!c) {
		c = FUNC2(sizeof(*c));
		FUNC0(c != NULL);
		p->current = c;
		c->next = p->all;
		p->all = c;
	}

	sample = FUNC2(sizeof(*sample));
	FUNC0(sample != NULL);
	sample->start_time = start;
	sample->end_time = end;
	sample->type = type;
	sample->next = c->samples;
	sample->cpu = cpu;
	c->samples = sample;

	if (sample->type == TYPE_RUNNING && end > start && start > 0) {
		c->total_time += (end-start);
		p->total_time += (end-start);
	}

	if (c->start_time == 0 || c->start_time > start)
		c->start_time = start;
	if (p->start_time == 0 || p->start_time > start)
		p->start_time = start;
}