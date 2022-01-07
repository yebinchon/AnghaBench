
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event {int dummy; } ;


 int __unregister_ftrace_event (struct trace_event*) ;
 int down_write (int *) ;
 int trace_event_mutex ;
 int up_write (int *) ;

int unregister_ftrace_event(struct trace_event *event)
{
 down_write(&trace_event_mutex);
 __unregister_ftrace_event(event);
 up_write(&trace_event_mutex);

 return 0;
}
