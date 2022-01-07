
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_map {scalar_t__ from; } ;



int
tree_map_eq (const void *va, const void *vb)
{
  const struct tree_map *a = va, *b = vb;
  return (a->from == b->from);
}
