
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct probe_trace_arg_ref* module; struct probe_trace_arg_ref* symbol; } ;
struct probe_trace_event {int nargs; struct probe_trace_arg_ref* args; TYPE_1__ point; struct probe_trace_arg_ref* group; struct probe_trace_arg_ref* event; } ;
struct probe_trace_arg_ref {struct probe_trace_arg_ref* next; struct probe_trace_arg_ref* ref; struct probe_trace_arg_ref* type; struct probe_trace_arg_ref* value; struct probe_trace_arg_ref* name; } ;


 int free (struct probe_trace_arg_ref*) ;
 int memset (struct probe_trace_event*,int ,int) ;

__attribute__((used)) static void clear_probe_trace_event(struct probe_trace_event *tev)
{
 struct probe_trace_arg_ref *ref, *next;
 int i;

 if (tev->event)
  free(tev->event);
 if (tev->group)
  free(tev->group);
 if (tev->point.symbol)
  free(tev->point.symbol);
 if (tev->point.module)
  free(tev->point.module);
 for (i = 0; i < tev->nargs; i++) {
  if (tev->args[i].name)
   free(tev->args[i].name);
  if (tev->args[i].value)
   free(tev->args[i].value);
  if (tev->args[i].type)
   free(tev->args[i].type);
  ref = tev->args[i].ref;
  while (ref) {
   next = ref->next;
   free(ref);
   ref = next;
  }
 }
 if (tev->args)
  free(tev->args);
 memset(tev, 0, sizeof(*tev));
}
