
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kp; } ;
struct trace_probe {int list; TYPE_1__ rp; } ;


 int EBUSY ;
 int list_del (int *) ;
 scalar_t__ trace_probe_is_enabled (struct trace_probe*) ;
 scalar_t__ trace_probe_is_return (struct trace_probe*) ;
 int unregister_kprobe (int *) ;
 int unregister_kretprobe (TYPE_1__*) ;
 int unregister_probe_event (struct trace_probe*) ;

__attribute__((used)) static int unregister_trace_probe(struct trace_probe *tp)
{

 if (trace_probe_is_enabled(tp))
  return -EBUSY;

 if (trace_probe_is_return(tp))
  unregister_kretprobe(&tp->rp);
 else
  unregister_kprobe(&tp->rp.kp);
 list_del(&tp->list);
 unregister_probe_event(tp);

 return 0;
}
