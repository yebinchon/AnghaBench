
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udf_bitmap {struct buffer_head** s_block_bitmap; int s_extPosition; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_partition; } ;


 int EIO ;
 TYPE_1__* UDF_SB (struct super_block*) ;
 int udf_get_lb_pblock (struct super_block*,struct kernel_lb_addr*,unsigned int) ;
 struct buffer_head* udf_tread (struct super_block*,int ) ;

__attribute__((used)) static int read_block_bitmap(struct super_block *sb,
        struct udf_bitmap *bitmap, unsigned int block,
        unsigned long bitmap_nr)
{
 struct buffer_head *bh = ((void*)0);
 int retval = 0;
 struct kernel_lb_addr loc;

 loc.logicalBlockNum = bitmap->s_extPosition;
 loc.partitionReferenceNum = UDF_SB(sb)->s_partition;

 bh = udf_tread(sb, udf_get_lb_pblock(sb, &loc, block));
 if (!bh)
  retval = -EIO;

 bitmap->s_block_bitmap[bitmap_nr] = bh;
 return retval;
}
