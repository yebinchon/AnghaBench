
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
struct kernel_lb_addr {size_t partitionReferenceNum; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {struct udf_part_map* s_partmaps; } ;


 int UDF_PART_FLAG_FREED_BITMAP ;
 int UDF_PART_FLAG_FREED_TABLE ;
 int UDF_PART_FLAG_UNALLOC_BITMAP ;
 int UDF_PART_FLAG_UNALLOC_TABLE ;
 TYPE_3__* UDF_SB (struct super_block*) ;
 int udf_bitmap_free_blocks (struct super_block*,struct inode*,int ,struct kernel_lb_addr*,int ,int ) ;
 int udf_table_free_blocks (struct super_block*,struct inode*,int ,struct kernel_lb_addr*,int ,int ) ;

void udf_free_blocks(struct super_block *sb, struct inode *inode,
       struct kernel_lb_addr *bloc, uint32_t offset,
       uint32_t count)
{
 uint16_t partition = bloc->partitionReferenceNum;
 struct udf_part_map *map = &UDF_SB(sb)->s_partmaps[partition];

 if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_BITMAP) {
  udf_bitmap_free_blocks(sb, inode, map->s_uspace.s_bitmap,
           bloc, offset, count);
 } else if (map->s_partition_flags & UDF_PART_FLAG_UNALLOC_TABLE) {
  udf_table_free_blocks(sb, inode, map->s_uspace.s_table,
          bloc, offset, count);
 } else if (map->s_partition_flags & UDF_PART_FLAG_FREED_BITMAP) {
  udf_bitmap_free_blocks(sb, inode, map->s_fspace.s_bitmap,
           bloc, offset, count);
 } else if (map->s_partition_flags & UDF_PART_FLAG_FREED_TABLE) {
  udf_table_free_blocks(sb, inode, map->s_fspace.s_table,
          bloc, offset, count);
 }
}
