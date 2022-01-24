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
struct pevent {int /*<<< orphan*/  cmdline_count; struct cmdline_list* cmdlist; scalar_t__ cmdlines; } ;
struct cmdline_list {int pid; struct cmdline_list* next; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int FUNC0 (struct pevent*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdline_list*) ; 
 struct cmdline_list* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4(struct pevent *pevent, const char *comm, int pid)
{
	struct cmdline_list *item;

	if (pevent->cmdlines)
		return FUNC0(pevent, comm, pid);

	item = FUNC2(sizeof(*item));
	if (!item)
		return -1;

	item->comm = FUNC3(comm);
	if (!item->comm) {
		FUNC1(item);
		return -1;
	}
	item->pid = pid;
	item->next = pevent->cmdlist;

	pevent->cmdlist = item;
	pevent->cmdline_count++;

	return 0;
}