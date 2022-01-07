
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct inode {int i_atime; int i_mtime; int i_size; TYPE_2__* i_sb; struct address_space* i_mapping; } ;
struct gfs2_sbd {int sd_fsb2bb_shift; } ;
struct TYPE_3__ {int qb_value; void* qb_limit; void* qb_warn; } ;
struct gfs2_quota_data {TYPE_1__ qd_qb; } ;
struct gfs2_quota {int qu_value; void* qu_limit; void* qu_warn; } ;
struct gfs2_inode {int i_gl; struct inode i_inode; } ;
struct fs_disk_quota {int d_fieldmask; int d_blk_softlimit; int d_blk_hardlimit; int d_bcount; } ;
struct buffer_head {int b_size; struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int q ;
typedef int loff_t ;
struct TYPE_4__ {unsigned int s_blocksize; int s_blocksize_bits; } ;


 int CURRENT_TIME ;
 int EIO ;
 int ENOMEM ;
 int FS_DQ_BCOUNT ;
 int FS_DQ_BHARD ;
 int FS_DQ_BSOFT ;
 int GFP_NOFS ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int KM_USER0 ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int READ_META ;
 int be64_to_cpu (int) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 void* cpu_to_be64 (int) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int ) ;
 int flush_dcache_page (struct page*) ;
 int gfs2_block_map (struct inode*,unsigned int,struct buffer_head*,int) ;
 int gfs2_internal_read (struct gfs2_inode*,int *,char*,int*,int) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_trans_add_data (int ,struct buffer_head*) ;
 int gfs2_unstuff_dinode (struct gfs2_inode*,int *) ;
 int i_size_write (struct inode*,int ) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (void*,void*,int) ;
 int memset (struct gfs2_quota*,int ,int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_page (struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,int ) ;

__attribute__((used)) static int gfs2_adjust_quota(struct gfs2_inode *ip, loff_t loc,
        s64 change, struct gfs2_quota_data *qd,
        struct fs_disk_quota *fdq)
{
 struct inode *inode = &ip->i_inode;
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct address_space *mapping = inode->i_mapping;
 unsigned long index = loc >> PAGE_CACHE_SHIFT;
 unsigned offset = loc & (PAGE_CACHE_SIZE - 1);
 unsigned blocksize, iblock, pos;
 struct buffer_head *bh;
 struct page *page;
 void *kaddr, *ptr;
 struct gfs2_quota q, *qp;
 int err, nbytes;
 u64 size;

 if (gfs2_is_stuffed(ip)) {
  err = gfs2_unstuff_dinode(ip, ((void*)0));
  if (err)
   return err;
 }

 memset(&q, 0, sizeof(struct gfs2_quota));
 err = gfs2_internal_read(ip, ((void*)0), (char *)&q, &loc, sizeof(q));
 if (err < 0)
  return err;

 err = -EIO;
 qp = &q;
 qp->qu_value = be64_to_cpu(qp->qu_value);
 qp->qu_value += change;
 qp->qu_value = cpu_to_be64(qp->qu_value);
 qd->qd_qb.qb_value = qp->qu_value;
 if (fdq) {
  if (fdq->d_fieldmask & FS_DQ_BSOFT) {
   qp->qu_warn = cpu_to_be64(fdq->d_blk_softlimit >> sdp->sd_fsb2bb_shift);
   qd->qd_qb.qb_warn = qp->qu_warn;
  }
  if (fdq->d_fieldmask & FS_DQ_BHARD) {
   qp->qu_limit = cpu_to_be64(fdq->d_blk_hardlimit >> sdp->sd_fsb2bb_shift);
   qd->qd_qb.qb_limit = qp->qu_limit;
  }
  if (fdq->d_fieldmask & FS_DQ_BCOUNT) {
   qp->qu_value = cpu_to_be64(fdq->d_bcount >> sdp->sd_fsb2bb_shift);
   qd->qd_qb.qb_value = qp->qu_value;
  }
 }


 ptr = qp;
 nbytes = sizeof(struct gfs2_quota);
get_a_page:
 page = find_or_create_page(mapping, index, GFP_NOFS);
 if (!page)
  return -ENOMEM;

 blocksize = inode->i_sb->s_blocksize;
 iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);

 if (!page_has_buffers(page))
  create_empty_buffers(page, blocksize, 0);

 bh = page_buffers(page);
 pos = blocksize;
 while (offset >= pos) {
  bh = bh->b_this_page;
  iblock++;
  pos += blocksize;
 }

 if (!buffer_mapped(bh)) {
  gfs2_block_map(inode, iblock, bh, 1);
  if (!buffer_mapped(bh))
   goto unlock_out;

  if (buffer_new(bh))
   zero_user(page, pos - blocksize, bh->b_size);
 }

 if (PageUptodate(page))
  set_buffer_uptodate(bh);

 if (!buffer_uptodate(bh)) {
  ll_rw_block(READ_META, 1, &bh);
  wait_on_buffer(bh);
  if (!buffer_uptodate(bh))
   goto unlock_out;
 }

 gfs2_trans_add_data(ip->i_gl, bh);

 kaddr = kmap_atomic(page, KM_USER0);
 if (offset + sizeof(struct gfs2_quota) > PAGE_CACHE_SIZE)
  nbytes = PAGE_CACHE_SIZE - offset;
 memcpy(kaddr + offset, ptr, nbytes);
 flush_dcache_page(page);
 kunmap_atomic(kaddr, KM_USER0);
 unlock_page(page);
 page_cache_release(page);



 if ((offset + sizeof(struct gfs2_quota)) > PAGE_CACHE_SIZE) {
  ptr = ptr + nbytes;
  nbytes = sizeof(struct gfs2_quota) - nbytes;
  offset = 0;
  index++;
  goto get_a_page;
 }

 size = loc + sizeof(struct gfs2_quota);
 if (size > inode->i_size)
  i_size_write(inode, size);
 inode->i_mtime = inode->i_atime = CURRENT_TIME;
 mark_inode_dirty(inode);
 return 0;

unlock_out:
 unlock_page(page);
 page_cache_release(page);
 return err;
}
