
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int system; int list; int dir; scalar_t__ event; } ;


 int __unregister_ftrace_event (scalar_t__) ;
 int debugfs_remove_recursive (int ) ;
 int destroy_preds (struct ftrace_event_call*) ;
 int ftrace_event_enable_disable (struct ftrace_event_call*,int ) ;
 int list_del (int *) ;
 int remove_subsystem_dir (int ) ;
 int trace_destroy_fields (struct ftrace_event_call*) ;

__attribute__((used)) static void __trace_remove_event_call(struct ftrace_event_call *call)
{
 ftrace_event_enable_disable(call, 0);
 if (call->event)
  __unregister_ftrace_event(call->event);
 debugfs_remove_recursive(call->dir);
 list_del(&call->list);
 trace_destroy_fields(call);
 destroy_preds(call);
 remove_subsystem_dir(call->system);
}
