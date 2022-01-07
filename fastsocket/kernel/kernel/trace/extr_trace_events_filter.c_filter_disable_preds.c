
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftrace_event_call {int flags; struct event_filter* filter; } ;
struct event_filter {TYPE_1__** preds; scalar_t__ n_preds; } ;
struct TYPE_2__ {int fn; } ;


 int MAX_FILTER_PRED ;
 int TRACE_EVENT_FL_FILTERED ;
 int filter_pred_none ;

__attribute__((used)) static void filter_disable_preds(struct ftrace_event_call *call)
{
 struct event_filter *filter = call->filter;
 int i;

 call->flags &= ~TRACE_EVENT_FL_FILTERED;
 filter->n_preds = 0;

 for (i = 0; i < MAX_FILTER_PRED; i++)
  filter->preds[i]->fn = filter_pred_none;
}
