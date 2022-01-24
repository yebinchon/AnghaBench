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
typedef  int u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; int /*<<< orphan*/  ts; struct trace_entry* ent; struct fgraph_data* private; } ;
struct trace_entry {int /*<<< orphan*/  pid; } ;
struct fgraph_data {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int TRACE_GRAPH_PRINT_ABS_TIME ; 
 int TRACE_GRAPH_PRINT_CPU ; 
 int TRACE_GRAPH_PRINT_PROC ; 
 int TRACE_ITER_LATENCY_FMT ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct trace_seq*) ; 
 int FUNC1 (struct trace_seq*,int) ; 
 int FUNC2 (struct trace_iterator*,unsigned long,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct trace_seq*,struct trace_entry*) ; 
 int FUNC4 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int trace_flags ; 
 int FUNC5 (struct trace_seq*,char*) ; 
 int FUNC6 (struct trace_seq*,int /*<<< orphan*/ ,int,struct fgraph_data*) ; 

__attribute__((used)) static enum print_line_t
FUNC7(struct trace_iterator *iter, struct trace_seq *s,
		     int type, unsigned long addr, u32 flags)
{
	struct fgraph_data *data = iter->private;
	struct trace_entry *ent = iter->ent;
	int cpu = iter->cpu;
	int ret;

	/* Pid */
	if (FUNC6(s, ent->pid, cpu, data) == TRACE_TYPE_PARTIAL_LINE)
		return TRACE_TYPE_PARTIAL_LINE;

	if (type) {
		/* Interrupt */
		ret = FUNC2(iter, addr, type, cpu, ent->pid, flags);
		if (ret == TRACE_TYPE_PARTIAL_LINE)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Absolute time */
	if (flags & TRACE_GRAPH_PRINT_ABS_TIME) {
		ret = FUNC0(iter->ts, s);
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Cpu */
	if (flags & TRACE_GRAPH_PRINT_CPU) {
		ret = FUNC1(s, cpu);
		if (ret == TRACE_TYPE_PARTIAL_LINE)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Proc */
	if (flags & TRACE_GRAPH_PRINT_PROC) {
		ret = FUNC4(s, ent->pid);
		if (ret == TRACE_TYPE_PARTIAL_LINE)
			return TRACE_TYPE_PARTIAL_LINE;

		ret = FUNC5(s, " | ");
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Latency format */
	if (trace_flags & TRACE_ITER_LATENCY_FMT) {
		ret = FUNC3(s, ent);
		if (ret == TRACE_TYPE_PARTIAL_LINE)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	return 0;
}