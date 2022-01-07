
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct symbol {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_8__ {scalar_t__ offset; int * symbol; int retprobe; int * module; } ;
struct probe_trace_event {int nargs; TYPE_4__ point; TYPE_3__* args; scalar_t__ uprobes; } ;
struct probe_trace_arg {int dummy; } ;
struct TYPE_5__ {char const* function; scalar_t__ offset; int retprobe; } ;
struct perf_probe_event {int nargs; scalar_t__ uprobes; TYPE_2__* args; TYPE_1__ point; } ;
struct TYPE_7__ {int * type; int * value; int * name; } ;
struct TYPE_6__ {char const* name; char const* var; char const* type; } ;


 int ENOENT ;
 int ENOMEM ;
 struct symbol* __find_kernel_function_by_name (int *,int *) ;
 int clear_probe_trace_event (struct probe_trace_event*) ;
 int free (struct probe_trace_event*) ;
 int pr_warning (char*,int *) ;
 void* strdup (char const*) ;
 int try_to_find_probe_trace_events (struct perf_probe_event*,struct probe_trace_event**,int,char const*) ;
 void* zalloc (int) ;

__attribute__((used)) static int convert_to_probe_trace_events(struct perf_probe_event *pev,
       struct probe_trace_event **tevs,
       int max_tevs, const char *target)
{
 struct symbol *sym;
 int ret = 0, i;
 struct probe_trace_event *tev;


 ret = try_to_find_probe_trace_events(pev, tevs, max_tevs, target);
 if (ret != 0)
  return ret;


 tev = *tevs = zalloc(sizeof(struct probe_trace_event));
 if (tev == ((void*)0))
  return -ENOMEM;


 tev->point.symbol = strdup(pev->point.function);
 if (tev->point.symbol == ((void*)0)) {
  ret = -ENOMEM;
  goto error;
 }

 if (target) {
  tev->point.module = strdup(target);
  if (tev->point.module == ((void*)0)) {
   ret = -ENOMEM;
   goto error;
  }
 }

 tev->point.offset = pev->point.offset;
 tev->point.retprobe = pev->point.retprobe;
 tev->nargs = pev->nargs;
 tev->uprobes = pev->uprobes;

 if (tev->nargs) {
  tev->args = zalloc(sizeof(struct probe_trace_arg)
       * tev->nargs);
  if (tev->args == ((void*)0)) {
   ret = -ENOMEM;
   goto error;
  }
  for (i = 0; i < tev->nargs; i++) {
   if (pev->args[i].name) {
    tev->args[i].name = strdup(pev->args[i].name);
    if (tev->args[i].name == ((void*)0)) {
     ret = -ENOMEM;
     goto error;
    }
   }
   tev->args[i].value = strdup(pev->args[i].var);
   if (tev->args[i].value == ((void*)0)) {
    ret = -ENOMEM;
    goto error;
   }
   if (pev->args[i].type) {
    tev->args[i].type = strdup(pev->args[i].type);
    if (tev->args[i].type == ((void*)0)) {
     ret = -ENOMEM;
     goto error;
    }
   }
  }
 }

 if (pev->uprobes)
  return 1;


 sym = __find_kernel_function_by_name(tev->point.symbol, ((void*)0));
 if (!sym) {
  pr_warning("Kernel symbol \'%s\' not found.\n",
      tev->point.symbol);
  ret = -ENOENT;
  goto error;
 } else if (tev->point.offset > sym->end - sym->start) {
  pr_warning("Offset specified is greater than size of %s\n",
      tev->point.symbol);
  ret = -ENOENT;
  goto error;

 }

 return 1;
error:
 clear_probe_trace_event(tev);
 free(tev);
 *tevs = ((void*)0);
 return ret;
}
