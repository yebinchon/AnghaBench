
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int print_fmt; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct trace_probe {TYPE_2__ call; } ;


 int kfree (int ) ;
 int trace_remove_event_call (TYPE_2__*) ;

__attribute__((used)) static void unregister_probe_event(struct trace_probe *tp)
{

 trace_remove_event_call(&tp->call);
 kfree(tp->call.fmt.print_fmt);
}
