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
struct trace_iterator {int iter_flags; int /*<<< orphan*/  ts; int /*<<< orphan*/  cpu; struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int TASK_COMM_LEN ; 
 int TRACE_FILE_TIME_IN_NS ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 unsigned long FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct trace_seq*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,...) ; 

int FUNC4(struct trace_iterator *iter)
{
	struct trace_seq *s = &iter->seq;
	struct trace_entry *entry = iter->ent;
	unsigned long long t;
	unsigned long secs, usec_rem;
	char comm[TASK_COMM_LEN];

	FUNC2(entry->pid, comm);

	if (iter->iter_flags & TRACE_FILE_TIME_IN_NS) {
		t = FUNC1(iter->ts);
		usec_rem = FUNC0(t, USEC_PER_SEC);
		secs = (unsigned long)t;
		return FUNC3(s, "%16s-%-5d [%03d] %5lu.%06lu: ",
					comm, entry->pid, iter->cpu, secs, usec_rem);
	} else
		return FUNC3(s, "%16s-%-5d [%03d] %12llu: ",
					comm, entry->pid, iter->cpu, iter->ts);
}