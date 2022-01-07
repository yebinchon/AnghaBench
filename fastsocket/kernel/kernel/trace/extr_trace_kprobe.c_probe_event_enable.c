
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kp; } ;
struct trace_probe {TYPE_1__ rp; int flags; } ;
struct ftrace_event_call {scalar_t__ data; } ;


 int TP_FLAG_TRACE ;
 int enable_kprobe (int *) ;
 int enable_kretprobe (TYPE_1__*) ;
 scalar_t__ trace_probe_is_return (struct trace_probe*) ;

__attribute__((used)) static int probe_event_enable(struct ftrace_event_call *call)
{
 struct trace_probe *tp = (struct trace_probe *)call->data;

 tp->flags |= TP_FLAG_TRACE;
 if (trace_probe_is_return(tp))
  return enable_kretprobe(&tp->rp);
 else
  return enable_kprobe(&tp->rp.kp);
}
