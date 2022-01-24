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
struct mmiotrace_map {int opcode; int /*<<< orphan*/  map_id; int /*<<< orphan*/  len; int /*<<< orphan*/  virt; scalar_t__ phys; } ;
struct trace_mmiotrace_map {struct mmiotrace_map map; } ;
struct trace_iterator {int /*<<< orphan*/  ts; struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
#define  MMIO_PROBE 129 
#define  MMIO_UNPROBE 128 
 int TRACE_TYPE_HANDLED ; 
 int TRACE_TYPE_PARTIAL_LINE ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 unsigned long FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_mmiotrace_map*,struct trace_entry*) ; 
 int FUNC3 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static enum print_line_t FUNC4(struct trace_iterator *iter)
{
	struct trace_entry *entry = iter->ent;
	struct trace_mmiotrace_map *field;
	struct mmiotrace_map *m;
	struct trace_seq *s	= &iter->seq;
	unsigned long long t	= FUNC1(iter->ts);
	unsigned long usec_rem	= FUNC0(t, USEC_PER_SEC);
	unsigned secs		= (unsigned long)t;
	int ret;

	FUNC2(field, entry);
	m = &field->map;

	switch (m->opcode) {
	case MMIO_PROBE:
		ret = FUNC3(s,
			"MAP %u.%06lu %d 0x%llx 0x%lx 0x%lx 0x%lx %d\n",
			secs, usec_rem, m->map_id,
			(unsigned long long)m->phys, m->virt, m->len,
			0UL, 0);
		break;
	case MMIO_UNPROBE:
		ret = FUNC3(s,
			"UNMAP %u.%06lu %d 0x%lx %d\n",
			secs, usec_rem, m->map_id, 0UL, 0);
		break;
	default:
		ret = FUNC3(s, "map what?\n");
		break;
	}
	if (ret)
		return TRACE_TYPE_HANDLED;
	return TRACE_TYPE_PARTIAL_LINE;
}