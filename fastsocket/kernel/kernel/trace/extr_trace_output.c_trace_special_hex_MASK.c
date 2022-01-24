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
struct special_entry {int /*<<< orphan*/  arg3; int /*<<< orphan*/  arg2; int /*<<< orphan*/  arg1; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int TRACE_TYPE_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct special_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum print_line_t FUNC2(struct trace_iterator *iter,
					   int flags)
{
	struct special_entry *field;
	struct trace_seq *s = &iter->seq;

	FUNC1(field, iter->ent);

	FUNC0(s, field->arg1);
	FUNC0(s, field->arg2);
	FUNC0(s, field->arg3);

	return TRACE_TYPE_HANDLED;
}