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
struct stack_entry {scalar_t__* caller; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int FTRACE_STACK_ENTRIES ; 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stack_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t FUNC3(struct trace_iterator *iter,
					   int flags)
{
	struct stack_entry *field;
	struct trace_seq *s = &iter->seq;
	int i;

	FUNC1(field, iter->ent);

	if (!FUNC2(s, "<stack trace>\n"))
		goto partial;
	for (i = 0; i < FTRACE_STACK_ENTRIES; i++) {
		if (!field->caller[i] || (field->caller[i] == ULONG_MAX))
			break;
		if (!FUNC2(s, " => "))
			goto partial;

		if (!FUNC0(s, field->caller[i], flags))
			goto partial;
		if (!FUNC2(s, "\n"))
			goto partial;
	}

	return TRACE_TYPE_HANDLED;

 partial:
	return TRACE_TYPE_PARTIAL_LINE;
}