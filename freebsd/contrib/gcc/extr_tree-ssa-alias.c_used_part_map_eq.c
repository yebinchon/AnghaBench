
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct used_part_map {scalar_t__ uid; } ;



__attribute__((used)) static int
used_part_map_eq (const void *va, const void *vb)
{
  const struct used_part_map *a = (const struct used_part_map *) va;
  const struct used_part_map *b = (const struct used_part_map *) vb;
  return (a->uid == b->uid);
}
