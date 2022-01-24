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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int TRACE_GRAPH_PRINT_ABS_TIME ; 
 int TRACE_GRAPH_PRINT_CPU ; 
 int TRACE_GRAPH_PRINT_DURATION ; 
 int TRACE_GRAPH_PRINT_PROC ; 
 int TRACE_ITER_LATENCY_FMT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int trace_flags ; 

__attribute__((used)) static void FUNC2(struct seq_file *s, u32 flags)
{
	int lat = trace_flags & TRACE_ITER_LATENCY_FMT;

	if (lat)
		FUNC0(s, flags);

	/* 1st line */
	FUNC1(s, "#");
	if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
		FUNC1(s, "     TIME       ");
	if (flags & TRACE_GRAPH_PRINT_CPU)
		FUNC1(s, " CPU");
	if (flags & TRACE_GRAPH_PRINT_PROC)
		FUNC1(s, "  TASK/PID       ");
	if (lat)
		FUNC1(s, "|||||");
	if (flags & TRACE_GRAPH_PRINT_DURATION)
		FUNC1(s, "  DURATION   ");
	FUNC1(s, "               FUNCTION CALLS\n");

	/* 2nd line */
	FUNC1(s, "#");
	if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
		FUNC1(s, "      |         ");
	if (flags & TRACE_GRAPH_PRINT_CPU)
		FUNC1(s, " |  ");
	if (flags & TRACE_GRAPH_PRINT_PROC)
		FUNC1(s, "   |    |        ");
	if (lat)
		FUNC1(s, "|||||");
	if (flags & TRACE_GRAPH_PRINT_DURATION)
		FUNC1(s, "   |   |      ");
	FUNC1(s, "               |   |   |   |\n");
}