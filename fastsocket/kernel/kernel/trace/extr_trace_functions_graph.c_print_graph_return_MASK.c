#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; struct fgraph_data* private; } ;
struct trace_entry {int /*<<< orphan*/  pid; } ;
struct ftrace_graph_ret {unsigned long long rettime; unsigned long long calltime; int depth; int /*<<< orphan*/  func; int /*<<< orphan*/  overrun; } ;
struct fgraph_data {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int depth; } ;

/* Variables and functions */
 int TRACE_GRAPH_INDENT ; 
 int TRACE_GRAPH_PRINT_DURATION ; 
 int TRACE_GRAPH_PRINT_OVERRUN ; 
 int /*<<< orphan*/  TRACE_GRAPH_RET ; 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 TYPE_1__* FUNC0 (struct fgraph_data*,int) ; 
 int FUNC1 (unsigned long long,struct trace_seq*) ; 
 int FUNC2 (struct trace_iterator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (unsigned long long,struct trace_seq*,int) ; 
 scalar_t__ FUNC4 (struct trace_iterator*,struct trace_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static enum print_line_t
FUNC6(struct ftrace_graph_ret *trace, struct trace_seq *s,
		   struct trace_entry *ent, struct trace_iterator *iter,
		   u32 flags)
{
	unsigned long long duration = trace->rettime - trace->calltime;
	struct fgraph_data *data = iter->private;
	pid_t pid = ent->pid;
	int cpu = iter->cpu;
	int ret;
	int i;

	if (data) {
		int cpu = iter->cpu;
		int *depth = &(FUNC0(data, cpu)->depth);

		/*
		 * Comments display at + 1 to depth. This is the
		 * return from a function, we now want the comments
		 * to display at the same level of the bracket.
		 */
		*depth = trace->depth - 1;
	}

	if (FUNC4(iter, s, 0, 0, flags))
		return TRACE_TYPE_PARTIAL_LINE;

	/* Overhead */
	ret = FUNC3(duration, s, flags);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Duration */
	if (flags & TRACE_GRAPH_PRINT_DURATION) {
		ret = FUNC1(duration, s);
		if (ret == TRACE_TYPE_PARTIAL_LINE)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Closing brace */
	for (i = 0; i < trace->depth * TRACE_GRAPH_INDENT; i++) {
		ret = FUNC5(s, " ");
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	ret = FUNC5(s, "}\n");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Overrun */
	if (flags & TRACE_GRAPH_PRINT_OVERRUN) {
		ret = FUNC5(s, " (Overruns: %lu)\n",
					trace->overrun);
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	ret = FUNC2(iter, trace->func, TRACE_GRAPH_RET,
			      cpu, pid, flags);
	if (ret == TRACE_TYPE_PARTIAL_LINE)
		return TRACE_TYPE_PARTIAL_LINE;

	return TRACE_TYPE_HANDLED;
}