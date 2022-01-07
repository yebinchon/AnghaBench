
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int nr; int map; } ;


 struct cpu_map* malloc (int) ;
 int memcpy (int ,int*,size_t) ;

__attribute__((used)) static struct cpu_map *cpu_map__trim_new(int nr_cpus, int *tmp_cpus)
{
 size_t payload_size = nr_cpus * sizeof(int);
 struct cpu_map *cpus = malloc(sizeof(*cpus) + payload_size);

 if (cpus != ((void*)0)) {
  cpus->nr = nr_cpus;
  memcpy(cpus->map, tmp_cpus, payload_size);
 }

 return cpus;
}
