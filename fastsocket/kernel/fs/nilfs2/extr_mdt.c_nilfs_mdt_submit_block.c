
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct buffer_head {int b_page; int b_end_io; scalar_t__ b_blocknr; int b_bdev; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_6__ {int i_bmap; } ;
struct TYPE_5__ {TYPE_1__* mi_nilfs; } ;
struct TYPE_4__ {int ns_bdev; } ;


 int EBUSY ;
 int EEXIST ;
 int ENOMEM ;
 TYPE_3__* NILFS_I (struct inode*) ;
 TYPE_2__* NILFS_MDT (struct inode*) ;
 int READA ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int nilfs_bmap_lookup (int ,unsigned long,scalar_t__*) ;
 struct buffer_head* nilfs_grab_buffer (struct inode*,int ,unsigned long,int ) ;
 int page_cache_release (int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int submit_bh (int,struct buffer_head*) ;
 int trylock_buffer (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (int ) ;

__attribute__((used)) static int
nilfs_mdt_submit_block(struct inode *inode, unsigned long blkoff,
         int mode, struct buffer_head **out_bh)
{
 struct buffer_head *bh;
 __u64 blknum = 0;
 int ret = -ENOMEM;

 bh = nilfs_grab_buffer(inode, inode->i_mapping, blkoff, 0);
 if (unlikely(!bh))
  goto failed;

 ret = -EEXIST;
 if (buffer_uptodate(bh))
  goto out;

 if (mode == READA) {
  if (!trylock_buffer(bh)) {
   ret = -EBUSY;
   goto failed_bh;
  }
 } else
  lock_buffer(bh);

 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  goto out;
 }

 ret = nilfs_bmap_lookup(NILFS_I(inode)->i_bmap, blkoff, &blknum);
 if (unlikely(ret)) {
  unlock_buffer(bh);
  goto failed_bh;
 }
 bh->b_bdev = NILFS_MDT(inode)->mi_nilfs->ns_bdev;
 bh->b_blocknr = (sector_t)blknum;
 set_buffer_mapped(bh);

 bh->b_end_io = end_buffer_read_sync;
 get_bh(bh);
 submit_bh(mode, bh);
 ret = 0;
 out:
 get_bh(bh);
 *out_bh = bh;

 failed_bh:
 unlock_page(bh->b_page);
 page_cache_release(bh->b_page);
 brelse(bh);
 failed:
 return ret;
}
