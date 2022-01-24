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
struct trace_iterator {int /*<<< orphan*/  ent; struct trace_seq seq; } ;
struct ftrace_entry {scalar_t__ parent_ip; scalar_t__ ip; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int TRACE_ITER_PRINT_PARENT ; 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t FUNC3(struct trace_iterator *iter, int flags)
{
	struct ftrace_entry *field;
	struct trace_seq *s = &iter->seq;

	FUNC1(field, iter->ent);

	if (!FUNC0(s, field->ip, flags))
		goto partial;

	if ((flags & TRACE_ITER_PRINT_PARENT) && field->parent_ip) {
		if (!FUNC2(s, " <-"))
			goto partial;
		if (!FUNC0(s,
				      field->parent_ip,
				      flags))
			goto partial;
	}
	if (!FUNC2(s, "\n"))
		goto partial;

	return TRACE_TYPE_HANDLED;

 partial:
	return TRACE_TYPE_PARTIAL_LINE;
}