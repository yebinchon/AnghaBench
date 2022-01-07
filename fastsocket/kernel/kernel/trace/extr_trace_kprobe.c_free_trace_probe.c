
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct trace_probe* name; struct trace_probe* system; } ;
struct trace_probe {int nr_args; struct trace_probe* symbol; TYPE_1__ call; int * args; } ;


 int free_probe_arg (int *) ;
 int kfree (struct trace_probe*) ;

__attribute__((used)) static void free_trace_probe(struct trace_probe *tp)
{
 int i;

 for (i = 0; i < tp->nr_args; i++)
  free_probe_arg(&tp->args[i]);

 kfree(tp->call.system);
 kfree(tp->call.name);
 kfree(tp->symbol);
 kfree(tp);
}
