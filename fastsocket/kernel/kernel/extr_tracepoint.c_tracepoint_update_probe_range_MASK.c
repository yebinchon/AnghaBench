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
struct tracepoint_entry {int /*<<< orphan*/  refcount; } ;
struct tracepoint {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tracepoint*) ; 
 struct tracepoint_entry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tracepoint_entry**,struct tracepoint*,int) ; 
 int /*<<< orphan*/  tracepoints_mutex ; 

void
FUNC5(struct tracepoint *begin, struct tracepoint *end)
{
	struct tracepoint *iter;
	struct tracepoint_entry *mark_entry;

	if (!begin)
		return;

	FUNC2(&tracepoints_mutex);
	for (iter = begin; iter < end; iter++) {
		mark_entry = FUNC1(iter->name);
		if (mark_entry) {
			FUNC4(&mark_entry, iter,
					!!mark_entry->refcount);
		} else {
			FUNC0(iter);
		}
	}
	FUNC3(&tracepoints_mutex);
}