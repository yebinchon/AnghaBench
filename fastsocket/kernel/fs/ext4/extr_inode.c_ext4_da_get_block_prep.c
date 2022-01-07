
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct buffer_head {int b_size; } ;
typedef int sector_t ;
struct TYPE_5__ {int s_es; } ;
struct TYPE_4__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 TYPE_2__* EXT4_SB (TYPE_1__*) ;
 int buffer_delay (struct buffer_head*) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;
 int ext4_blocks_count (int ) ;
 int ext4_da_reserve_space (struct inode*,int ) ;
 int ext4_get_blocks (int *,struct inode*,int ,int,struct buffer_head*,int ) ;
 int map_bh (struct buffer_head*,TYPE_1__*,int ) ;
 int set_buffer_delay (struct buffer_head*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;

__attribute__((used)) static int ext4_da_get_block_prep(struct inode *inode, sector_t iblock,
      struct buffer_head *bh_result, int create)
{
 int ret = 0;
 sector_t invalid_block = ~((sector_t) 0xffff);

 if (invalid_block < ext4_blocks_count(EXT4_SB(inode->i_sb)->s_es))
  invalid_block = ~0;

 BUG_ON(create == 0);
 BUG_ON(bh_result->b_size != inode->i_sb->s_blocksize);






 ret = ext4_get_blocks(((void*)0), inode, iblock, 1, bh_result, 0);
 if ((ret == 0) && !buffer_delay(bh_result)) {





  ret = ext4_da_reserve_space(inode, iblock);
  if (ret)

   return ret;

  map_bh(bh_result, inode->i_sb, invalid_block);
  set_buffer_new(bh_result);
  set_buffer_delay(bh_result);
 } else if (ret > 0) {
  bh_result->b_size = (ret << inode->i_blkbits);
  if (buffer_unwritten(bh_result)) {







   set_buffer_new(bh_result);
   set_buffer_mapped(bh_result);
  }
  ret = 0;
 }

 return ret;
}
