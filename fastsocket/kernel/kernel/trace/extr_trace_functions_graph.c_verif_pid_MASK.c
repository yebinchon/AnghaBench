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
struct trace_seq {int dummy; } ;
struct fgraph_data {int dummy; } ;
typedef  int pid_t ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int last_pid; } ;

/* Variables and functions */
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 TYPE_1__* FUNC0 (struct fgraph_data*,int) ; 
 int FUNC1 (struct trace_seq*,int) ; 
 int FUNC2 (struct trace_seq*,int) ; 
 int FUNC3 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t
FUNC4(struct trace_seq *s, pid_t pid, int cpu, struct fgraph_data *data)
{
	pid_t prev_pid;
	pid_t *last_pid;
	int ret;

	if (!data)
		return TRACE_TYPE_HANDLED;

	last_pid = &(FUNC0(data, cpu)->last_pid);

	if (*last_pid == pid)
		return TRACE_TYPE_HANDLED;

	prev_pid = *last_pid;
	*last_pid = pid;

	if (prev_pid == -1)
		return TRACE_TYPE_HANDLED;
/*
 * Context-switch trace line:

 ------------------------------------------
 | 1)  migration/0--1  =>  sshd-1755
 ------------------------------------------

 */
	ret = FUNC3(s,
		" ------------------------------------------\n");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	ret = FUNC1(s, cpu);
	if (ret == TRACE_TYPE_PARTIAL_LINE)
		return TRACE_TYPE_PARTIAL_LINE;

	ret = FUNC2(s, prev_pid);
	if (ret == TRACE_TYPE_PARTIAL_LINE)
		return TRACE_TYPE_PARTIAL_LINE;

	ret = FUNC3(s, " => ");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	ret = FUNC2(s, pid);
	if (ret == TRACE_TYPE_PARTIAL_LINE)
		return TRACE_TYPE_PARTIAL_LINE;

	ret = FUNC3(s,
		"\n ------------------------------------------\n\n");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	return TRACE_TYPE_HANDLED;
}