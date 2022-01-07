
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int* map; int nr; } ;


 int _SC_NPROCESSORS_ONLN ;
 struct cpu_map* malloc (int) ;
 int sysconf (int ) ;

__attribute__((used)) static struct cpu_map *cpu_map__default_new(void)
{
 struct cpu_map *cpus;
 int nr_cpus;

 nr_cpus = sysconf(_SC_NPROCESSORS_ONLN);
 if (nr_cpus < 0)
  return ((void*)0);

 cpus = malloc(sizeof(*cpus) + nr_cpus * sizeof(int));
 if (cpus != ((void*)0)) {
  int i;
  for (i = 0; i < nr_cpus; ++i)
   cpus->map[i] = i;

  cpus->nr = nr_cpus;
 }

 return cpus;
}
