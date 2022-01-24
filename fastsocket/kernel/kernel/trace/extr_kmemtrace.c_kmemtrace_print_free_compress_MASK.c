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
struct kmemtrace_free_entry {int type_id; scalar_t__ call_site; scalar_t__ ptr; } ;
typedef  void* ptrdiff_t ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
#define  KMEMTRACE_TYPE_CACHE 130 
#define  KMEMTRACE_TYPE_KMALLOC 129 
#define  KMEMTRACE_TYPE_PAGES 128 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int /*<<< orphan*/  FUNC0 (struct kmemtrace_free_entry*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static enum print_line_t
FUNC2(struct trace_iterator *iter)
{
	struct kmemtrace_free_entry *entry;
	struct trace_seq *s = &iter->seq;
	int ret;

	FUNC0(entry, iter->ent);

	/* Free entry */
	ret = FUNC1(s, "  -      ");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Type */
	switch (entry->type_id) {
	case KMEMTRACE_TYPE_KMALLOC:
		ret = FUNC1(s, "K     ");
		break;
	case KMEMTRACE_TYPE_CACHE:
		ret = FUNC1(s, "C     ");
		break;
	case KMEMTRACE_TYPE_PAGES:
		ret = FUNC1(s, "P     ");
		break;
	default:
		ret = FUNC1(s, "?     ");
	}

	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Skip requested/allocated/flags */
	ret = FUNC1(s, "                       ");
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Pointer to allocated */
	ret = FUNC1(s, "0x%tx   ", (ptrdiff_t)entry->ptr);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	/* Skip node and print call site*/
	ret = FUNC1(s, "       %pf\n", (void *)entry->call_site);
	if (!ret)
		return TRACE_TYPE_PARTIAL_LINE;

	return TRACE_TYPE_HANDLED;
}