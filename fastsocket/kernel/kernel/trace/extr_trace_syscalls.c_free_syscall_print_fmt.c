
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syscall_metadata {struct ftrace_event_call* enter_event; } ;
struct TYPE_2__ {int print_fmt; } ;
struct ftrace_event_call {TYPE_1__ fmt; struct syscall_metadata* data; } ;


 int kfree (int ) ;

void free_syscall_print_fmt(struct ftrace_event_call *call)
{
 struct syscall_metadata *entry = call->data;

 if (entry->enter_event == call)
  kfree(call->fmt.print_fmt);
}
