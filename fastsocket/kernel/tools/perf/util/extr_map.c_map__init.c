
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct map {int type; int referenced; int erange_warned; int * groups; int rb_node; int unmap_ip; int map_ip; struct dso* dso; void* pgoff; void* end; void* start; } ;
struct dso {int dummy; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int RB_CLEAR_NODE (int *) ;
 int map__map_ip ;
 int map__unmap_ip ;

void map__init(struct map *self, enum map_type type,
        u64 start, u64 end, u64 pgoff, struct dso *dso)
{
 self->type = type;
 self->start = start;
 self->end = end;
 self->pgoff = pgoff;
 self->dso = dso;
 self->map_ip = map__map_ip;
 self->unmap_ip = map__unmap_ip;
 RB_CLEAR_NODE(&self->rb_node);
 self->groups = ((void*)0);
 self->referenced = 0;
 self->erange_warned = 0;
}
