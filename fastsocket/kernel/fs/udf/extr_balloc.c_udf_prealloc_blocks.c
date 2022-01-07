
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


 int UDF_PART_FLAG_FREED_BITMAP ;
 int UDF_PART_FLAG_FREED_TABLE ;
 int UDF_PART_FLAG_UNALLOC_BITMAP ;
 int UDF_PART_FLAG_UNALLOC_TABLE ;
 TYPE_3__* UDF_SB (struct super_block*) ;
 int udf_bitmap_prealloc_blocks (struct super_block*,struct inode*,int ,size_t,int ,int ) ;
 int udf_table_prealloc_blocks (struct super_block*,struct inode*,int ,size_t,int ,int ) ;

inline int udf_prealloc_blocks(struct super_block *sb,
          struct inode *inode,
          uint16_t partition, uint32_t first_block,
          uint32_t block_count)
{
 struct udf_part_map *map = &UDF_SB(sb)->s_partmaps[partition];

 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP)
  return udf_bitmap_prealloc_blocks(sb, inode,
        map->s_uspace.s_bitmap,
        partition, first_block,
        block_count);
 else if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE)
  return udf_table_prealloc_blocks(sb, inode,
       map->s_uspace.s_table,
       partition, first_block,
       block_count);
 else if (map->s_partition_flags & UDF_PART_FLAG_FREED_BITMAP)
  return udf_bitmap_prealloc_blocks(sb, inode,
        map->s_fspace.s_bitmap,
        partition, first_block,
        block_count);
 else if (map->s_partition_flags & UDF_PART_FLAG_FREED_TABLE)
  return udf_table_prealloc_blocks(sb, inode,
       map->s_fspace.s_table,
       partition, first_block,
       block_count);
 else
  return 0;
}
