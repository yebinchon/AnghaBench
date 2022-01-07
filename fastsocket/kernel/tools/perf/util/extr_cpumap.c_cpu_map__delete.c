
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int dummy; } ;


 int free (struct cpu_map*) ;

void cpu_map__delete(struct cpu_map *map)
{
 free(map);
}
