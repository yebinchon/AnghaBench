
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;



int
xfs_bitmap_empty(uint *map, uint size)
{
 uint i;
 uint ret = 0;

 for (i = 0; i < size; i++) {
  ret |= map[i];
 }

 return (ret == 0);
}
