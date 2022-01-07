
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int (* profile_disable ) (struct ftrace_event_call*) ;int profile_count; } ;


 int atomic_add_negative (int,int *) ;
 int free_percpu (char*) ;
 int rcu_assign_pointer (char*,int *) ;
 int stub1 (struct ftrace_event_call*) ;
 int synchronize_sched () ;
 int total_profile_count ;
 char* trace_profile_buf ;
 char* trace_profile_buf_nmi ;

__attribute__((used)) static void ftrace_profile_disable_event(struct ftrace_event_call *event)
{
 char *buf, *nmi_buf;

 if (!atomic_add_negative(-1, &event->profile_count))
  return;

 event->profile_disable(event);

 if (!--total_profile_count) {
  buf = trace_profile_buf;
  rcu_assign_pointer(trace_profile_buf, ((void*)0));

  nmi_buf = trace_profile_buf_nmi;
  rcu_assign_pointer(trace_profile_buf_nmi, ((void*)0));





  synchronize_sched();

  free_percpu(buf);
  free_percpu(nmi_buf);
 }
}
