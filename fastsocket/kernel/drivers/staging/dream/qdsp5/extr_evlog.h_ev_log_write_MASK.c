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
struct ev_log {int fault; int next; int max; struct ev_entry* entry; } ;
struct ev_entry {unsigned int id; unsigned int arg; int /*<<< orphan*/  when; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ev_log *log, unsigned id, unsigned arg)
{
	struct ev_entry *entry;
	unsigned long flags;
	FUNC2(flags);

	if (log->fault) {
		if (log->fault == 1)
			goto done;
		log->fault--;
	}

	entry = log->entry + log->next;
	entry->when = FUNC0();
	entry->id = id;
	entry->arg = arg;
	log->next = (log->next + 1) & (log->max - 1);
done:
	FUNC1(flags);
}