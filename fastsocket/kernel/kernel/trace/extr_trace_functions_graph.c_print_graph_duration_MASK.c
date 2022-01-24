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
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int FUNC0 (unsigned long long,struct trace_seq*) ; 
 int FUNC1 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t
FUNC2(unsigned long long duration, struct trace_seq *s)
{
	int ret;

	ret = FUNC0(duration, s);
	if (ret != TRACE_TYPE_HANDLED)
		return ret;

	ret = FUNC1(s, "|  ");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	return TRACE_TYPE_HANDLED;
}