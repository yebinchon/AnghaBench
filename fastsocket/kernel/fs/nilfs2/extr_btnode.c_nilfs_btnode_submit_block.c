
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_blkbits; scalar_t__ i_ino; } ;
struct buffer_head {int b_page; void* b_blocknr; int b_end_io; int b_bdev; int b_data; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef void* __u64 ;
struct TYPE_3__ {int ns_bdev; } ;


 int BH_NILFS_Node ;
 int BUG () ;
 int EEXIST ;
 int ENOMEM ;
 struct inode* NILFS_BTNC_I (struct address_space*) ;
 scalar_t__ NILFS_DAT_INO ;
 TYPE_1__* NILFS_I_NILFS (struct inode*) ;
 int READ ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int) ;
 struct inode* nilfs_dat_inode (TYPE_1__*) ;
 int nilfs_dat_translate (struct inode*,void*,scalar_t__*) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,struct address_space*,void*,int) ;
 int page_cache_release (int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (int ) ;

int nilfs_btnode_submit_block(struct address_space *btnc, __u64 blocknr,
         sector_t pblocknr, struct buffer_head **pbh,
         int newblk)
{
 struct buffer_head *bh;
 struct inode *inode = NILFS_BTNC_I(btnc);
 int err;

 bh = nilfs_grab_buffer(inode, btnc, blocknr, 1 << BH_NILFS_Node);
 if (unlikely(!bh))
  return -ENOMEM;

 err = -EEXIST;
 if (newblk) {
  if (unlikely(buffer_mapped(bh) || buffer_uptodate(bh) ||
        buffer_dirty(bh))) {
   brelse(bh);
   BUG();
  }
  memset(bh->b_data, 0, 1 << inode->i_blkbits);
  bh->b_bdev = NILFS_I_NILFS(inode)->ns_bdev;
  bh->b_blocknr = blocknr;
  set_buffer_mapped(bh);
  set_buffer_uptodate(bh);
  goto found;
 }

 if (buffer_uptodate(bh) || buffer_dirty(bh))
  goto found;

 if (pblocknr == 0) {
  pblocknr = blocknr;
  if (inode->i_ino != NILFS_DAT_INO) {
   struct inode *dat =
    nilfs_dat_inode(NILFS_I_NILFS(inode));


   err = nilfs_dat_translate(dat, blocknr, &pblocknr);
   if (unlikely(err)) {
    brelse(bh);
    goto out_locked;
   }
  }
 }
 lock_buffer(bh);
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  err = -EEXIST;
  goto found;
 }
 set_buffer_mapped(bh);
 bh->b_bdev = NILFS_I_NILFS(inode)->ns_bdev;
 bh->b_blocknr = pblocknr;
 bh->b_end_io = end_buffer_read_sync;
 get_bh(bh);
 submit_bh(READ, bh);
 bh->b_blocknr = blocknr;
 err = 0;
found:
 *pbh = bh;

out_locked:
 unlock_page(bh->b_page);
 page_cache_release(bh->b_page);
 return err;
}
