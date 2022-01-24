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
struct trace_seq {int dummy; } ;
struct pevent_record {void* data; } ;
struct pevent {int dummy; } ;

/* Variables and functions */
 unsigned int TRACE_FLAG_HARDIRQ ; 
 unsigned int TRACE_FLAG_IRQS_NOSUPPORT ; 
 unsigned int TRACE_FLAG_IRQS_OFF ; 
 unsigned int TRACE_FLAG_NEED_RESCHED ; 
 unsigned int TRACE_FLAG_SOFTIRQ ; 
 unsigned int FUNC0 (struct pevent*,void*) ; 
 int FUNC1 (struct pevent*,void*) ; 
 int FUNC2 (struct pevent*,void*) ; 
 unsigned int FUNC3 (struct pevent*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*) ; 

void FUNC7(struct pevent *pevent,
			 struct trace_seq *s, struct pevent_record *record)
{
	static int check_lock_depth = 1;
	static int check_migrate_disable = 1;
	static int lock_depth_exists;
	static int migrate_disable_exists;
	unsigned int lat_flags;
	unsigned int pc;
	int lock_depth;
	int migrate_disable;
	int hardirq;
	int softirq;
	void *data = record->data;

	lat_flags = FUNC0(pevent, data);
	pc = FUNC3(pevent, data);
	/* lock_depth may not always exist */
	if (lock_depth_exists)
		lock_depth = FUNC1(pevent, data);
	else if (check_lock_depth) {
		lock_depth = FUNC1(pevent, data);
		if (lock_depth < 0)
			check_lock_depth = 0;
		else
			lock_depth_exists = 1;
	}

	/* migrate_disable may not always exist */
	if (migrate_disable_exists)
		migrate_disable = FUNC2(pevent, data);
	else if (check_migrate_disable) {
		migrate_disable = FUNC2(pevent, data);
		if (migrate_disable < 0)
			check_migrate_disable = 0;
		else
			migrate_disable_exists = 1;
	}

	hardirq = lat_flags & TRACE_FLAG_HARDIRQ;
	softirq = lat_flags & TRACE_FLAG_SOFTIRQ;

	FUNC4(s, "%c%c%c",
	       (lat_flags & TRACE_FLAG_IRQS_OFF) ? 'd' :
	       (lat_flags & TRACE_FLAG_IRQS_NOSUPPORT) ?
	       'X' : '.',
	       (lat_flags & TRACE_FLAG_NEED_RESCHED) ?
	       'N' : '.',
	       (hardirq && softirq) ? 'H' :
	       hardirq ? 'h' : softirq ? 's' : '.');

	if (pc)
		FUNC4(s, "%x", pc);
	else
		FUNC5(s, '.');

	if (migrate_disable_exists) {
		if (migrate_disable < 0)
			FUNC5(s, '.');
		else
			FUNC4(s, "%d", migrate_disable);
	}

	if (lock_depth_exists) {
		if (lock_depth < 0)
			FUNC5(s, '.');
		else
			FUNC4(s, "%d", lock_depth);
	}

	FUNC6(s);
}