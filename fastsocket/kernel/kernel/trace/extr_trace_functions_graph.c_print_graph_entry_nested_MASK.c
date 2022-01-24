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
struct ftrace_graph_ent {int depth; scalar_t__ func; } ;
struct ftrace_graph_ent_entry {struct ftrace_graph_ent graph_ent; } ;
struct fgraph_data {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int depth; } ;

/* Variables and functions */
 int TRACE_GRAPH_INDENT ; 
 int TRACE_GRAPH_PRINT_DURATION ; 
 int TRACE_TYPE_NO_CONSUME ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 TYPE_1__* FUNC0 (struct fgraph_data*,int) ; 
 int FUNC1 (int,struct trace_seq*,int) ; 
 int FUNC2 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static enum print_line_t
FUNC3(struct trace_iterator *iter,
			 struct ftrace_graph_ent_entry *entry,
			 struct trace_seq *s, int cpu, u32 flags)
{
	struct ftrace_graph_ent *call = &entry->graph_ent;
	struct fgraph_data *data = iter->private;
	int ret;
	int i;

	if (data) {
		int cpu = iter->cpu;
		int *depth = &(FUNC0(data, cpu)->depth);

		*depth = call->depth;
	}

	/* No overhead */
	ret = FUNC1(-1, s, flags);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* No time */
	if (flags & TRACE_GRAPH_PRINT_DURATION) {
		ret = FUNC2(s, "            |  ");
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Function */
	for (i = 0; i < call->depth * TRACE_GRAPH_INDENT; i++) {
		ret = FUNC2(s, " ");
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	ret = FUNC2(s, "%ps() {\n", (void *)call->func);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/*
	 * we already consumed the current entry to check the next one
	 * and see if this is a leaf.
	 */
	return TRACE_TYPE_NO_CONSUME;
}