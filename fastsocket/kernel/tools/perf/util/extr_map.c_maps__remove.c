
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct map {int rb_node; } ;


 int rb_erase (int *,struct rb_root*) ;

void maps__remove(struct rb_root *self, struct map *map)
{
 rb_erase(&map->rb_node, self);
}
