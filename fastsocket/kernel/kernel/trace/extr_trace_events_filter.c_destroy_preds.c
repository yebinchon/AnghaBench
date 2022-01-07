
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int flags; int * filter; } ;


 int TRACE_EVENT_FL_FILTERED ;
 int __free_preds (int *) ;

void destroy_preds(struct ftrace_event_call *call)
{
 __free_preds(call->filter);
 call->filter = ((void*)0);
 call->flags &= ~TRACE_EVENT_FL_FILTERED;
}
