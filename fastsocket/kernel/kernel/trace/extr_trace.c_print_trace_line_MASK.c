#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_iterator {TYPE_1__* ent; TYPE_2__* trace; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_4__ {int (* print_line ) (struct trace_iterator*) ;} ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ TRACE_BPRINT ; 
 int TRACE_ITER_BIN ; 
 int TRACE_ITER_HEX ; 
 int TRACE_ITER_PRINTK ; 
 int TRACE_ITER_PRINTK_MSGONLY ; 
 int TRACE_ITER_RAW ; 
 scalar_t__ TRACE_PRINT ; 
 int TRACE_TYPE_UNHANDLED ; 
 int FUNC0 (struct trace_iterator*) ; 
 int FUNC1 (struct trace_iterator*) ; 
 int FUNC2 (struct trace_iterator*) ; 
 int FUNC3 (struct trace_iterator*) ; 
 int FUNC4 (struct trace_iterator*) ; 
 int trace_flags ; 
 int FUNC5 (struct trace_iterator*) ; 
 int FUNC6 (struct trace_iterator*) ; 

__attribute__((used)) static enum print_line_t FUNC7(struct trace_iterator *iter)
{
	enum print_line_t ret;

	if (iter->trace && iter->trace->print_line) {
		ret = iter->trace->print_line(iter);
		if (ret != TRACE_TYPE_UNHANDLED)
			return ret;
	}

	if (iter->ent->type == TRACE_BPRINT &&
			trace_flags & TRACE_ITER_PRINTK &&
			trace_flags & TRACE_ITER_PRINTK_MSGONLY)
		return FUNC5(iter);

	if (iter->ent->type == TRACE_PRINT &&
			trace_flags & TRACE_ITER_PRINTK &&
			trace_flags & TRACE_ITER_PRINTK_MSGONLY)
		return FUNC6(iter);

	if (trace_flags & TRACE_ITER_BIN)
		return FUNC0(iter);

	if (trace_flags & TRACE_ITER_HEX)
		return FUNC1(iter);

	if (trace_flags & TRACE_ITER_RAW)
		return FUNC2(iter);

	return FUNC3(iter);
}