
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxx_int_tree_map {scalar_t__ uid; } ;



int
cxx_int_tree_map_eq (const void *va, const void *vb)
{
  const struct cxx_int_tree_map *a = (const struct cxx_int_tree_map *) va;
  const struct cxx_int_tree_map *b = (const struct cxx_int_tree_map *) vb;
  return (a->uid == b->uid);
}
