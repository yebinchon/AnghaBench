
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jfs_flag; unsigned long ext2_flag; } ;


 TYPE_1__* jfs_map ;

__attribute__((used)) static long jfs_map_ext2(unsigned long flags, int from)
{
 int index=0;
 long mapped=0;

 while (jfs_map[index].jfs_flag) {
  if (from) {
   if (jfs_map[index].ext2_flag & flags)
    mapped |= jfs_map[index].jfs_flag;
  } else {
   if (jfs_map[index].jfs_flag & flags)
    mapped |= jfs_map[index].ext2_flag;
  }
  index++;
 }
 return mapped;
}
