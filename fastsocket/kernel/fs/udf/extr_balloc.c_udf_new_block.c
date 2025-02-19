
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_5__ {int s_table; int s_bitmap; } ;
struct TYPE_4__ {int s_table; int s_bitmap; } ;
struct udf_part_map {int s_partition_flags; TYPE_2__ s_fspace; TYPE_1__ s_uspace; } ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {struct udf_part_map* s_partmaps; } ;


 int EIO ;
 int UDF_PART_FLAG_FREED_BITMAP ;
 int UDF_PART_FLAG_FREED_TABLE ;
 int UDF_PART_FLAG_UNALLOC_BITMAP ;
 int UDF_PART_FLAG_UNALLOC_TABLE ;
 TYPE_3__* UDF_SB (struct super_block*) ;
 int udf_bitmap_new_block (struct super_block*,struct inode*,int ,size_t,int ,int*) ;
 int udf_table_new_block (struct super_block*,struct inode*,int ,size_t,int ,int*) ;

inline int udf_new_block(struct super_block *sb,
    struct inode *inode,
    uint16_t partition, uint32_t goal, int *err)
{
 struct udf_part_map *map = &UDF_SB(sb)->s_partmaps[partition];

 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP)
  return udf_bitmap_new_block(sb, inode,
        map->s_uspace.s_bitmap,
        partition, goal, err);
 else if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE)
  return udf_table_new_block(sb, inode,
        map->s_uspace.s_table,
        partition, goal, err);
 else if (map->s_partition_flags & UDF_PART_FLAG_FREED_BITMAP)
  return udf_bitmap_new_block(sb, inode,
         map->s_fspace.s_bitmap,
         partition, goal, err);
 else if (map->s_partition_flags & UDF_PART_FLAG_FREED_TABLE)
  return udf_table_new_block(sb, inode,
        map->s_fspace.s_table,
        partition, goal, err);
 else {
  *err = -EIO;
  return 0;
 }
}
