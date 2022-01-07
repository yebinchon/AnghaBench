
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {unsigned long long start; } ;
struct perf_probe_point {char const* function; unsigned long long offset; } ;
struct perf_probe_event {char* event; void* group; struct perf_probe_point point; } ;
struct map {unsigned long long start; unsigned long long pgoff; int dso; } ;


 int EINVAL ;
 int ENOMEM ;
 int MAX_PROBE_ARGS ;
 int PERFPROBE_GROUP ;
 int available_func_filter ;
 char const* basename (char*) ;
 int dso__delete (int ) ;
 struct map* dso__new_map (char*) ;
 int e_snprintf (char*,int,char*,unsigned long long,...) ;
 int filter_available_functions ;
 int free (char*) ;
 int map__delete (struct map*) ;
 struct symbol* map__find_symbol_by_name (struct map*,char*,int *) ;
 scalar_t__ map__load (struct map*,int ) ;
 int pr_err (char*) ;
 int pr_warning (char*,...) ;
 char* realpath (char const*,int *) ;
 char* strdup (char const*) ;
 int strfilter__new (char*,int *) ;
 char* strpbrk (char*,char*) ;
 void* zalloc (int) ;

__attribute__((used)) static int convert_name_to_addr(struct perf_probe_event *pev, const char *exec)
{
 struct perf_probe_point *pp = &pev->point;
 struct symbol *sym;
 struct map *map = ((void*)0);
 char *function = ((void*)0), *name = ((void*)0);
 int ret = -EINVAL;
 unsigned long long vaddr = 0;

 if (!pp->function) {
  pr_warning("No function specified for uprobes");
  goto out;
 }

 function = strdup(pp->function);
 if (!function) {
  pr_warning("Failed to allocate memory by strdup.\n");
  ret = -ENOMEM;
  goto out;
 }

 name = realpath(exec, ((void*)0));
 if (!name) {
  pr_warning("Cannot find realpath for %s.\n", exec);
  goto out;
 }
 map = dso__new_map(name);
 if (!map) {
  pr_warning("Cannot find appropriate DSO for %s.\n", exec);
  goto out;
 }
 available_func_filter = strfilter__new(function, ((void*)0));
 if (map__load(map, filter_available_functions)) {
  pr_err("Failed to load map.\n");
  goto out;
 }

 sym = map__find_symbol_by_name(map, function, ((void*)0));
 if (!sym) {
  pr_warning("Cannot find %s in DSO %s\n", function, exec);
  goto out;
 }

 if (map->start > sym->start)
  vaddr = map->start;
 vaddr += sym->start + pp->offset + map->pgoff;
 pp->offset = 0;

 if (!pev->event) {
  pev->event = function;
  function = ((void*)0);
 }
 if (!pev->group) {
  char *ptr1, *ptr2, *exec_copy;

  pev->group = zalloc(sizeof(char *) * 64);
  exec_copy = strdup(exec);
  if (!exec_copy) {
   ret = -ENOMEM;
   pr_warning("Failed to copy exec string.\n");
   goto out;
  }

  ptr1 = strdup(basename(exec_copy));
  if (ptr1) {
   ptr2 = strpbrk(ptr1, "-._");
   if (ptr2)
    *ptr2 = '\0';
   e_snprintf(pev->group, 64, "%s_%s", PERFPROBE_GROUP,
     ptr1);
   free(ptr1);
  }
  free(exec_copy);
 }
 free(pp->function);
 pp->function = zalloc(sizeof(char *) * MAX_PROBE_ARGS);
 if (!pp->function) {
  ret = -ENOMEM;
  pr_warning("Failed to allocate memory by zalloc.\n");
  goto out;
 }
 e_snprintf(pp->function, MAX_PROBE_ARGS, "0x%llx", vaddr);
 ret = 0;

out:
 if (map) {
  dso__delete(map->dso);
  map__delete(map);
 }
 if (function)
  free(function);
 if (name)
  free(name);
 return ret;
}
