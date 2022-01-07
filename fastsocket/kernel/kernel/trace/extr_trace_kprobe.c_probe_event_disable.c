
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kp; } ;
struct trace_probe {int flags; TYPE_1__ rp; } ;
struct ftrace_event_call {scalar_t__ data; } ;


 int TP_FLAG_PROFILE ;
 int TP_FLAG_TRACE ;
 int disable_kprobe (int *) ;
 int disable_kretprobe (TYPE_1__*) ;
 scalar_t__ trace_probe_is_return (struct trace_probe*) ;

__attribute__((used)) static void probe_event_disable(struct ftrace_event_call *call)
{
 struct trace_probe *tp = (struct trace_probe *)call->data;

 tp->flags &= ~TP_FLAG_TRACE;
 if (!(tp->flags & (TP_FLAG_TRACE | TP_FLAG_PROFILE))) {
  if (trace_probe_is_return(tp))
   disable_kretprobe(&tp->rp);
  else
   disable_kprobe(&tp->rp.kp);
 }
}
