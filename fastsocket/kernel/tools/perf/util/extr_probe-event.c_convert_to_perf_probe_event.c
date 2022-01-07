
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct probe_trace_event {char* event; char* group; int nargs; TYPE_2__* args; int point; } ;
struct perf_probe_event {int nargs; TYPE_1__* args; int point; int * group; int * event; } ;
struct perf_probe_arg {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int * name; } ;


 int ENOMEM ;
 int clear_perf_probe_event (struct perf_probe_event*) ;
 int convert_to_perf_probe_point (int *,int *) ;
 int kprobe_convert_to_perf_probe (int *,int *) ;
 void* strdup (char*) ;
 int synthesize_probe_trace_arg (TYPE_2__*,char*,int) ;
 TYPE_1__* zalloc (int) ;

__attribute__((used)) static int convert_to_perf_probe_event(struct probe_trace_event *tev,
          struct perf_probe_event *pev, bool is_kprobe)
{
 char buf[64] = "";
 int i, ret;


 pev->event = strdup(tev->event);
 pev->group = strdup(tev->group);
 if (pev->event == ((void*)0) || pev->group == ((void*)0))
  return -ENOMEM;


 if (is_kprobe)
  ret = kprobe_convert_to_perf_probe(&tev->point, &pev->point);
 else
  ret = convert_to_perf_probe_point(&tev->point, &pev->point);

 if (ret < 0)
  return ret;


 pev->nargs = tev->nargs;
 pev->args = zalloc(sizeof(struct perf_probe_arg) * pev->nargs);
 if (pev->args == ((void*)0))
  return -ENOMEM;
 for (i = 0; i < tev->nargs && ret >= 0; i++) {
  if (tev->args[i].name)
   pev->args[i].name = strdup(tev->args[i].name);
  else {
   ret = synthesize_probe_trace_arg(&tev->args[i],
         buf, 64);
   pev->args[i].name = strdup(buf);
  }
  if (pev->args[i].name == ((void*)0) && ret >= 0)
   ret = -ENOMEM;
 }

 if (ret < 0)
  clear_perf_probe_event(pev);

 return ret;
}
