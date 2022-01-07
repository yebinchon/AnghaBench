
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int dummy; } ;


 unsigned long INT_MAX ;
 scalar_t__ MAX_NR_CPUS ;
 struct cpu_map* cpu_map__default_new () ;
 struct cpu_map* cpu_map__read_all_cpu_map () ;
 struct cpu_map* cpu_map__trim_new (int,int*) ;
 int free (int*) ;
 scalar_t__ isdigit (char const) ;
 int* realloc (int*,int) ;
 unsigned long strtoul (char const*,char**,int ) ;

struct cpu_map *cpu_map__new(const char *cpu_list)
{
 struct cpu_map *cpus = ((void*)0);
 unsigned long start_cpu, end_cpu = 0;
 char *p = ((void*)0);
 int i, nr_cpus = 0;
 int *tmp_cpus = ((void*)0), *tmp;
 int max_entries = 0;

 if (!cpu_list)
  return cpu_map__read_all_cpu_map();

 if (!isdigit(*cpu_list))
  goto out;

 while (isdigit(*cpu_list)) {
  p = ((void*)0);
  start_cpu = strtoul(cpu_list, &p, 0);
  if (start_cpu >= INT_MAX
      || (*p != '\0' && *p != ',' && *p != '-'))
   goto invalid;

  if (*p == '-') {
   cpu_list = ++p;
   p = ((void*)0);
   end_cpu = strtoul(cpu_list, &p, 0);

   if (end_cpu >= INT_MAX || (*p != '\0' && *p != ','))
    goto invalid;

   if (end_cpu < start_cpu)
    goto invalid;
  } else {
   end_cpu = start_cpu;
  }

  for (; start_cpu <= end_cpu; start_cpu++) {

   for (i = 0; i < nr_cpus; i++)
    if (tmp_cpus[i] == (int)start_cpu)
     goto invalid;

   if (nr_cpus == max_entries) {
    max_entries += MAX_NR_CPUS;
    tmp = realloc(tmp_cpus, max_entries * sizeof(int));
    if (tmp == ((void*)0))
     goto invalid;
    tmp_cpus = tmp;
   }
   tmp_cpus[nr_cpus++] = (int)start_cpu;
  }
  if (*p)
   ++p;

  cpu_list = p;
 }

 if (nr_cpus > 0)
  cpus = cpu_map__trim_new(nr_cpus, tmp_cpus);
 else
  cpus = cpu_map__default_new();
invalid:
 free(tmp_cpus);
out:
 return cpus;
}
