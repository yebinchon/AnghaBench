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
struct wake_event {int waker; int wakee; scalar_t__ time; struct wake_event* next; } ;
struct per_pidcomm {int Y; scalar_t__ start_time; scalar_t__ end_time; struct per_pidcomm* next; int /*<<< orphan*/  comm; } ;
struct per_pid {int pid; struct per_pid* next; struct per_pidcomm* all; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct per_pid* all_data ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int) ; 
 struct wake_event* wake_events ; 

__attribute__((used)) static void FUNC8(void)
{
	struct wake_event *we;
	struct per_pid *p;
	struct per_pidcomm *c;

	we = wake_events;
	while (we) {
		int from = 0, to = 0;
		char *task_from = NULL, *task_to = NULL;

		/* locate the column of the waker and wakee */
		p = all_data;
		while (p) {
			if (p->pid == we->waker || p->pid == we->wakee) {
				c = p->all;
				while (c) {
					if (c->Y && c->start_time <= we->time && c->end_time >= we->time) {
						if (p->pid == we->waker && !from) {
							from = c->Y;
							task_from = FUNC4(c->comm);
						}
						if (p->pid == we->wakee && !to) {
							to = c->Y;
							task_to = FUNC4(c->comm);
						}
					}
					c = c->next;
				}
				c = p->all;
				while (c) {
					if (p->pid == we->waker && !from) {
						from = c->Y;
						task_from = FUNC4(c->comm);
					}
					if (p->pid == we->wakee && !to) {
						to = c->Y;
						task_to = FUNC4(c->comm);
					}
					c = c->next;
				}
			}
			p = p->next;
		}

		if (!task_from) {
			task_from = FUNC2(40);
			FUNC3(task_from, "[%i]", we->waker);
		}
		if (!task_to) {
			task_to = FUNC2(40);
			FUNC3(task_to, "[%i]", we->wakee);
		}

		if (we->waker == -1)
			FUNC5(we->time, to);
		else if (from && to && FUNC0(from - to) == 1)
			FUNC7(we->time, from, to);
		else
			FUNC6(we->time, from, task_from, to, task_to);
		we = we->next;

		FUNC1(task_from);
		FUNC1(task_to);
	}
}