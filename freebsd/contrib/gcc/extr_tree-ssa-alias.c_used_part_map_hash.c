
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct used_part_map {unsigned int uid; } ;



__attribute__((used)) static unsigned int
used_part_map_hash (const void *item)
{
  return ((const struct used_part_map *)item)->uid;
}
