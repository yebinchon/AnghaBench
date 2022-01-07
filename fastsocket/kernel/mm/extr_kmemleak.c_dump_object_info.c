
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stack_trace {int entries; int nr_entries; } ;
struct TYPE_2__ {int start; } ;
struct kmemleak_object {int flags; int count; int min_count; int jiffies; int pid; int comm; int size; TYPE_1__ tree_node; int trace; int trace_len; } ;


 int pr_notice (char*,...) ;
 int print_stack_trace (struct stack_trace*,int) ;

__attribute__((used)) static void dump_object_info(struct kmemleak_object *object)
{
 struct stack_trace trace;

 trace.nr_entries = object->trace_len;
 trace.entries = object->trace;

 pr_notice("Object 0x%08lx (size %zu):\n",
    object->tree_node.start, object->size);
 pr_notice("  comm \"%s\", pid %d, jiffies %lu\n",
    object->comm, object->pid, object->jiffies);
 pr_notice("  min_count = %d\n", object->min_count);
 pr_notice("  count = %d\n", object->count);
 pr_notice("  flags = 0x%lx\n", object->flags);
 pr_notice("  backtrace:\n");
 print_stack_trace(&trace, 4);
}
