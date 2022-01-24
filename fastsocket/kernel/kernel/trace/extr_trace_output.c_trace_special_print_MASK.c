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
struct trace_iterator {int /*<<< orphan*/  seq; int /*<<< orphan*/  ent; } ;
struct special_entry {int /*<<< orphan*/  arg3; int /*<<< orphan*/  arg2; int /*<<< orphan*/  arg1; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int /*<<< orphan*/  FUNC0 (struct special_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum print_line_t FUNC2(struct trace_iterator *iter,
					     int flags)
{
	struct special_entry *field;

	FUNC0(field, iter->ent);

	if (!FUNC1(&iter->seq, "# %ld %ld %ld\n",
			      field->arg1,
			      field->arg2,
			      field->arg3))
		return TRACE_TYPE_PARTIAL_LINE;

	return TRACE_TYPE_HANDLED;
}