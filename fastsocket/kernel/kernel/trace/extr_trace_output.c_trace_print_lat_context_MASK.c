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
struct trace_seq {int dummy; } ;
struct trace_iterator {int /*<<< orphan*/  cpu; int /*<<< orphan*/  idx; int /*<<< orphan*/  ts; struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int /*<<< orphan*/  preempt_count; int /*<<< orphan*/  flags; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int TASK_COMM_LEN ; 
 unsigned long TRACE_ITER_VERBOSE ; 
 int FUNC0 (struct trace_seq*,struct trace_entry*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct trace_entry* FUNC3 (struct trace_iterator*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long trace_flags ; 
 int FUNC4 (struct trace_seq*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct trace_iterator *iter)
{
	u64 next_ts;
	int ret;
	struct trace_seq *s = &iter->seq;
	struct trace_entry *entry = iter->ent,
			   *next_entry = FUNC3(iter, NULL,
							       &next_ts);
	unsigned long verbose = (trace_flags & TRACE_ITER_VERBOSE);

	if (!next_entry)
		next_ts = iter->ts;

	if (verbose) {
		char comm[TASK_COMM_LEN];

		FUNC2(entry->pid, comm);

		ret = FUNC4(
				s, "%16s %5d %3d %d %08x %08lx ",
				comm, entry->pid, iter->cpu, entry->flags,
				entry->preempt_count, iter->idx);
	} else {
		ret = FUNC0(s, entry, iter->cpu);
	}

	if (ret)
		ret = FUNC1(iter, next_ts);

	return ret;
}