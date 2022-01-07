
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpage_da_data {int b_size; scalar_t__ b_blocknr; unsigned long b_state; TYPE_2__* inode; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {int i_blkbits; TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_blocksize; } ;


 unsigned long BH_FLAGS ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAX_TRANS_DATA ;
 int ext4_test_inode_flag (TYPE_2__*,int ) ;
 int mpage_da_map_and_submit (struct mpage_da_data*) ;

__attribute__((used)) static void mpage_add_bh_to_extent(struct mpage_da_data *mpd,
       sector_t logical, size_t b_size,
       unsigned long b_state)
{
 sector_t next;
 int nrblocks = mpd->b_size >> mpd->inode->i_blkbits;







 if (nrblocks >= 8*1024*1024/mpd->inode->i_sb->s_blocksize)
  goto flush_it;


 if (!(ext4_test_inode_flag(mpd->inode, EXT4_INODE_EXTENTS))) {
  if (nrblocks >= EXT4_MAX_TRANS_DATA) {






   goto flush_it;
  } else if ((nrblocks + (b_size >> mpd->inode->i_blkbits)) >
    EXT4_MAX_TRANS_DATA) {





   b_size = (EXT4_MAX_TRANS_DATA - nrblocks) <<
      mpd->inode->i_blkbits;

  }
 }



 if (mpd->b_size == 0) {
  mpd->b_blocknr = logical;
  mpd->b_size = b_size;
  mpd->b_state = b_state & BH_FLAGS;
  return;
 }

 next = mpd->b_blocknr + nrblocks;



 if (logical == next && (b_state & BH_FLAGS) == mpd->b_state) {
  mpd->b_size += b_size;
  return;
 }

flush_it:




 mpage_da_map_and_submit(mpd);
 return;
}
