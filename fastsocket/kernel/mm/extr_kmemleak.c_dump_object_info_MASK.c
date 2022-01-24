#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stack_trace {int /*<<< orphan*/  entries; int /*<<< orphan*/  nr_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct kmemleak_object {int /*<<< orphan*/  flags; int /*<<< orphan*/  count; int /*<<< orphan*/  min_count; int /*<<< orphan*/  jiffies; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; int /*<<< orphan*/  size; TYPE_1__ tree_node; int /*<<< orphan*/  trace; int /*<<< orphan*/  trace_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct stack_trace*,int) ; 

__attribute__((used)) static void FUNC2(struct kmemleak_object *object)
{
	struct stack_trace trace;

	trace.nr_entries = object->trace_len;
	trace.entries = object->trace;

	FUNC0("Object 0x%08lx (size %zu):\n",
		  object->tree_node.start, object->size);
	FUNC0("  comm \"%s\", pid %d, jiffies %lu\n",
		  object->comm, object->pid, object->jiffies);
	FUNC0("  min_count = %d\n", object->min_count);
	FUNC0("  count = %d\n", object->count);
	FUNC0("  flags = 0x%lx\n", object->flags);
	FUNC0("  backtrace:\n");
	FUNC1(&trace, 4);
}