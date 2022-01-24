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
struct trace_iterator {int /*<<< orphan*/  cpu; struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {scalar_t__ type; } ;
struct hw_branch_entry {int /*<<< orphan*/  from; int /*<<< orphan*/  to; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 scalar_t__ TRACE_HW_BRANCHES ; 
 unsigned long TRACE_ITER_SYM_OFFSET ; 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int TRACE_TYPE_UNHANDLED ; 
 scalar_t__ FUNC0 (struct trace_seq*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_branch_entry*,struct trace_entry*) ; 
 scalar_t__ FUNC2 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static enum print_line_t FUNC3(struct trace_iterator *iter)
{
	unsigned long symflags = TRACE_ITER_SYM_OFFSET;
	struct trace_entry *entry = iter->ent;
	struct trace_seq *seq = &iter->seq;
	struct hw_branch_entry *it;

	FUNC1(it, entry);

	if (entry->type == TRACE_HW_BRANCHES) {
		if (FUNC2(seq, "%4d  ", iter->cpu) &&
		    FUNC0(seq, it->to, symflags) &&
		    FUNC2(seq, "\t  <-  ") &&
		    FUNC0(seq, it->from, symflags) &&
		    FUNC2(seq, "\n"))
			return TRACE_TYPE_HANDLED;
		return TRACE_TYPE_PARTIAL_LINE;
	}
	return TRACE_TYPE_UNHANDLED;
}