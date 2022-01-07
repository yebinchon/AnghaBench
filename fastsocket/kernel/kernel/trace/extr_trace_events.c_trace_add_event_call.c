
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int dummy; } ;


 int __trace_add_event_call (struct ftrace_event_call*) ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int trace_add_event_call(struct ftrace_event_call *call)
{
 int ret;
 mutex_lock(&event_mutex);
 ret = __trace_add_event_call(call);
 mutex_unlock(&event_mutex);
 return ret;
}
