
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int mg; } ;
struct map {int dummy; } ;


 int map_groups__fixup_overlappings (int *,struct map*,int ,int ) ;
 int map_groups__insert (int *,struct map*) ;
 int stderr ;
 int verbose ;

void thread__insert_map(struct thread *self, struct map *map)
{
 map_groups__fixup_overlappings(&self->mg, map, verbose, stderr);
 map_groups__insert(&self->mg, map);
}
