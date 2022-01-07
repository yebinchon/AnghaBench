
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int dummy; } ;


 int __trace_remove_event_call (struct ftrace_event_call*) ;
 int down_write (int *) ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_event_mutex ;
 int up_write (int *) ;

void trace_remove_event_call(struct ftrace_event_call *call)
{
 mutex_lock(&event_mutex);
 down_write(&trace_event_mutex);
 __trace_remove_event_call(call);
 up_write(&trace_event_mutex);
 mutex_unlock(&event_mutex);
}
