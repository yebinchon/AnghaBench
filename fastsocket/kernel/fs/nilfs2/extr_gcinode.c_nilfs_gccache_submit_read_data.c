
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct buffer_head {int b_page; scalar_t__ b_blocknr; int b_end_io; int b_bdev; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int ns_bdev; struct inode* ns_dat; } ;


 int ENOMEM ;
 TYPE_1__* NILFS_I_NILFS (struct inode*) ;
 int READ ;
 int brelse (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int nilfs_dat_translate (struct inode*,scalar_t__,scalar_t__*) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,int ,scalar_t__,int ) ;
 int page_cache_release (int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (int ) ;

int nilfs_gccache_submit_read_data(struct inode *inode, sector_t blkoff,
       sector_t pbn, __u64 vbn,
       struct buffer_head **out_bh)
{
 struct buffer_head *bh;
 int err;

 bh = nilfs_grab_buffer(inode, inode->i_mapping, blkoff, 0);
 if (unlikely(!bh))
  return -ENOMEM;

 if (buffer_uptodate(bh))
  goto out;

 if (pbn == 0) {
  struct inode *dat_inode = NILFS_I_NILFS(inode)->ns_dat;

  err = nilfs_dat_translate(dat_inode, vbn, &pbn);
  if (unlikely(err)) {
   brelse(bh);
   goto failed;
  }
 }

 lock_buffer(bh);
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  goto out;
 }

 if (!buffer_mapped(bh)) {
  bh->b_bdev = NILFS_I_NILFS(inode)->ns_bdev;
  set_buffer_mapped(bh);
 }
 bh->b_blocknr = pbn;
 bh->b_end_io = end_buffer_read_sync;
 get_bh(bh);
 submit_bh(READ, bh);
 if (vbn)
  bh->b_blocknr = vbn;
 out:
 err = 0;
 *out_bh = bh;

 failed:
 unlock_page(bh->b_page);
 page_cache_release(bh->b_page);
 return err;
}
