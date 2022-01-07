
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int nr; int* map; } ;


 struct cpu_map* malloc (int) ;

struct cpu_map *cpu_map__dummy_new(void)
{
 struct cpu_map *cpus = malloc(sizeof(*cpus) + sizeof(int));

 if (cpus != ((void*)0)) {
  cpus->nr = 1;
  cpus->map[0] = -1;
 }

 return cpus;
}
