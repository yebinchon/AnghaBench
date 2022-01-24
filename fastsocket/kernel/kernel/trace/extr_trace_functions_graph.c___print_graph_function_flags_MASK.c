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
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {int type; } ;
struct ftrace_graph_ret_entry {int /*<<< orphan*/  ret; } ;
struct ftrace_graph_ent_entry {int /*<<< orphan*/  ret; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
#define  TRACE_FN 131 
#define  TRACE_GRAPH_ENT 130 
#define  TRACE_GRAPH_RET 129 
#define  TRACE_STACK 128 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_UNHANDLED ; 
 int FUNC0 (struct trace_seq*,struct trace_entry*,struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ftrace_graph_ret_entry*,struct trace_seq*,struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct trace_seq*,struct trace_entry*,struct trace_iterator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ftrace_graph_ret_entry*,struct trace_entry*) ; 

enum print_line_t
FUNC4(struct trace_iterator *iter, u32 flags)
{
	struct trace_entry *entry = iter->ent;
	struct trace_seq *s = &iter->seq;

	switch (entry->type) {
	case TRACE_GRAPH_ENT: {
		/*
		 * print_graph_entry() may consume the current event,
		 * thus @field may become invalid, so we need to save it.
		 * sizeof(struct ftrace_graph_ent_entry) is very small,
		 * it can be safely saved at the stack.
		 */
		struct ftrace_graph_ent_entry *field, saved;
		FUNC3(field, entry);
		saved = *field;
		return FUNC1(&saved, s, iter, flags);
	}
	case TRACE_GRAPH_RET: {
		struct ftrace_graph_ret_entry *field;
		FUNC3(field, entry);
		return FUNC2(&field->ret, s, entry, iter, flags);
	}
	case TRACE_STACK:
	case TRACE_FN:
		/* dont trace stack and functions as comments */
		return TRACE_TYPE_UNHANDLED;

	default:
		return FUNC0(s, entry, iter, flags);
	}

	return TRACE_TYPE_HANDLED;
}