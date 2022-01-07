
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {int b_data; } ;
struct TYPE_6__ {TYPE_2__* BitMap; } ;
struct TYPE_4__ {int xtnt_blk; } ;
struct TYPE_5__ {int di_size; TYPE_1__ di_first_xtnt; } ;


 scalar_t__ QNX4_BLOCK_SIZE ;
 int brelse (struct buffer_head*) ;
 int count_bits (int ,int,int*) ;
 int le32_to_cpu (int ) ;
 int printk (char*) ;
 TYPE_3__* qnx4_sb (struct super_block*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;

unsigned long qnx4_count_free_blocks(struct super_block *sb)
{
 int start = le32_to_cpu(qnx4_sb(sb)->BitMap->di_first_xtnt.xtnt_blk) - 1;
 int total = 0;
 int total_free = 0;
 int offset = 0;
 int size = le32_to_cpu(qnx4_sb(sb)->BitMap->di_size);
 struct buffer_head *bh;

 while (total < size) {
  if ((bh = sb_bread(sb, start + offset)) == ((void*)0)) {
   printk("qnx4: I/O error in counting free blocks\n");
   break;
  }
  count_bits(bh->b_data, size - total, &total_free);
  brelse(bh);
  total += QNX4_BLOCK_SIZE;
  offset++;
 }

 return total_free;
}
