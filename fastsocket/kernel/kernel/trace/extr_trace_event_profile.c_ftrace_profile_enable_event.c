
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int (* profile_enable ) (struct ftrace_event_call*) ;int profile_count; } ;


 int ENOMEM ;
 scalar_t__ alloc_percpu (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int free_percpu (int *) ;
 int perf_trace_t ;
 int rcu_assign_pointer (int *,char*) ;
 int stub1 (struct ftrace_event_call*) ;
 int total_profile_count ;
 int * trace_profile_buf ;
 int * trace_profile_buf_nmi ;

__attribute__((used)) static int ftrace_profile_enable_event(struct ftrace_event_call *event)
{
 char *buf;
 int ret = -ENOMEM;

 if (atomic_inc_return(&event->profile_count))
  return 0;

 if (!total_profile_count) {
  buf = (char *)alloc_percpu(perf_trace_t);
  if (!buf)
   goto fail_buf;

  rcu_assign_pointer(trace_profile_buf, buf);

  buf = (char *)alloc_percpu(perf_trace_t);
  if (!buf)
   goto fail_buf_nmi;

  rcu_assign_pointer(trace_profile_buf_nmi, buf);
 }

 ret = event->profile_enable(event);
 if (!ret) {
  total_profile_count++;
  return 0;
 }

fail_buf_nmi:
 if (!total_profile_count) {
  free_percpu(trace_profile_buf_nmi);
  free_percpu(trace_profile_buf);
  trace_profile_buf_nmi = ((void*)0);
  trace_profile_buf = ((void*)0);
 }
fail_buf:
 atomic_dec(&event->profile_count);

 return ret;
}
