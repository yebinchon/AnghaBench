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
typedef  int u32 ;
struct trace_seq {char* buffer; int len; } ;
struct trace_iterator {TYPE_1__* ent; int /*<<< orphan*/  cpu; struct fgraph_data* private; } ;
struct trace_event {int (* trace ) (struct trace_iterator*,unsigned long) ;} ;
struct trace_entry {int /*<<< orphan*/  type; } ;
struct fgraph_data {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_4__ {int depth; } ;
struct TYPE_3__ {int type; } ;

/* Variables and functions */
#define  TRACE_BPRINT 129 
 int TRACE_GRAPH_INDENT ; 
 int TRACE_GRAPH_PRINT_DURATION ; 
 unsigned long TRACE_ITER_SYM_MASK ; 
#define  TRACE_PRINT 128 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int TRACE_TYPE_UNHANDLED ; 
 struct trace_event* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct fgraph_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct trace_seq*,int) ; 
 scalar_t__ FUNC3 (struct trace_iterator*,struct trace_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct trace_iterator*,unsigned long) ; 
 unsigned long trace_flags ; 
 int FUNC5 (struct trace_iterator*) ; 
 int FUNC6 (struct trace_iterator*) ; 
 int FUNC7 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t
FUNC8(struct trace_seq *s, struct trace_entry *ent,
		    struct trace_iterator *iter, u32 flags)
{
	unsigned long sym_flags = (trace_flags & TRACE_ITER_SYM_MASK);
	struct fgraph_data *data = iter->private;
	struct trace_event *event;
	int depth = 0;
	int ret;
	int i;

	if (data)
		depth = FUNC1(data, iter->cpu)->depth;

	if (FUNC3(iter, s, 0, 0, flags))
		return TRACE_TYPE_PARTIAL_LINE;

	/* No overhead */
	ret = FUNC2(-1, s, flags);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* No time */
	if (flags & TRACE_GRAPH_PRINT_DURATION) {
		ret = FUNC7(s, "            |  ");
		if (!ret)
			return TRACE_TYPE_PARTIAL_LINE;
	}

	/* Indentation */
	if (depth > 0)
		for (i = 0; i < (depth + 1) * TRACE_GRAPH_INDENT; i++) {
			ret = FUNC7(s, " ");
			if (!ret)
				return TRACE_TYPE_PARTIAL_LINE;
		}

	/* The comment */
	ret = FUNC7(s, "/* ");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	switch (iter->ent->type) {
	case TRACE_BPRINT:
		ret = FUNC5(iter);
		if (ret != TRACE_TYPE_HANDLED)
			return ret;
		break;
	case TRACE_PRINT:
		ret = FUNC6(iter);
		if (ret != TRACE_TYPE_HANDLED)
			return ret;
		break;
	default:
		event = FUNC0(ent->type);
		if (!event)
			return TRACE_TYPE_UNHANDLED;

		ret = event->trace(iter, sym_flags);
		if (ret != TRACE_TYPE_HANDLED)
			return ret;
	}

	/* Strip ending newline */
	if (s->buffer[s->len - 1] == '\n') {
		s->buffer[s->len - 1] = '\0';
		s->len--;
	}

	ret = FUNC7(s, " */\n");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	return TRACE_TYPE_HANDLED;
}