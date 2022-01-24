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
struct per_pidcomm {int display; int start_time; scalar_t__ total_time; scalar_t__ end_time; struct per_pidcomm* next; } ;
struct per_pid {int display; int start_time; scalar_t__ end_time; scalar_t__ total_time; struct per_pid* next; struct per_pidcomm* all; } ;

/* Variables and functions */
 struct per_pid* all_data ; 
 int FUNC0 () ; 
 void* first_time ; 
 void* last_time ; 
 int /*<<< orphan*/  power_only ; 
 scalar_t__ process_filter ; 

__attribute__((used)) static int FUNC1(u64 threshold)
{
	struct per_pid *p;
	struct per_pidcomm *c;
	int count = 0;

	if (process_filter)
		return FUNC0();

	p = all_data;
	while (p) {
		p->display = 0;
		if (p->start_time == 1)
			p->start_time = first_time;

		/* no exit marker, task kept running to the end */
		if (p->end_time == 0)
			p->end_time = last_time;
		if (p->total_time >= threshold && !power_only)
			p->display = 1;

		c = p->all;

		while (c) {
			c->display = 0;

			if (c->start_time == 1)
				c->start_time = first_time;

			if (c->total_time >= threshold && !power_only) {
				c->display = 1;
				count++;
			}

			if (c->end_time == 0)
				c->end_time = last_time;

			c = c->next;
		}
		p = p->next;
	}
	return count;
}