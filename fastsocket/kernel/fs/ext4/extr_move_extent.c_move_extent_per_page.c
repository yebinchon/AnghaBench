
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_blkbits; int i_size; TYPE_2__* i_sb; struct address_space* i_mapping; } ;
struct file {TYPE_1__* f_dentry; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space_operations {int (* write_begin ) (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page**,void**) ;int (* write_end ) (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page*,void*) ;int (* readpage ) (struct file*,struct page*) ;} ;
struct address_space {struct address_space_operations* a_ops; } ;
typedef int sector_t ;
typedef int pgoff_t ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_4__ {unsigned long s_blocksize; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 unsigned int AOP_FLAG_UNINTERRUPTIBLE ;
 scalar_t__ IS_ERR (int *) ;
 int KERNEL_DS ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 scalar_t__ PageLocked (struct page*) ;
 int PageUptodate (struct page*) ;
 int create_empty_buffers (struct page*,int,int ) ;
 int ext4_get_block (struct inode*,int ,struct buffer_head*,int ) ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 int get_fs () ;
 int lock_page (struct page*) ;
 int mext_replace_branches (int *,struct inode*,struct inode*,int,int,int*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_has_buffers (struct page*) ;
 scalar_t__ segment_eq (int ,int ) ;
 int stub1 (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page**,void**) ;
 int stub2 (struct file*,struct page*) ;
 int stub3 (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page*,void*) ;
 int try_to_release_page (struct page*,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int
move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
    pgoff_t orig_page_offset, int data_offset_in_page,
    int block_len_in_page, int uninit, int *err)
{
 struct inode *orig_inode = o_filp->f_dentry->d_inode;
 struct address_space *mapping = orig_inode->i_mapping;
 struct buffer_head *bh;
 struct page *page = ((void*)0);
 const struct address_space_operations *a_ops = mapping->a_ops;
 handle_t *handle;
 ext4_lblk_t orig_blk_offset;
 long long offs = orig_page_offset << PAGE_CACHE_SHIFT;
 unsigned long blocksize = orig_inode->i_sb->s_blocksize;
 unsigned int w_flags = 0;
 unsigned int tmp_data_size, data_size, replaced_size;
 void *fsdata;
 int i, jblocks;
 int err2 = 0;
 int replaced_count = 0;
 int blocks_per_page = PAGE_CACHE_SIZE >> orig_inode->i_blkbits;





 jblocks = ext4_writepage_trans_blocks(orig_inode) * 2;
 handle = ext4_journal_start(orig_inode, jblocks);
 if (IS_ERR(handle)) {
  *err = PTR_ERR(handle);
  return 0;
 }

 if (segment_eq(get_fs(), KERNEL_DS))
  w_flags |= AOP_FLAG_UNINTERRUPTIBLE;

 orig_blk_offset = orig_page_offset * blocks_per_page +
  data_offset_in_page;







 if (uninit) {
  replaced_count = mext_replace_branches(handle, orig_inode,
      donor_inode, orig_blk_offset,
      block_len_in_page, err);
  goto out2;
 }

 offs = (long long)orig_blk_offset << orig_inode->i_blkbits;


 if ((orig_blk_offset + block_len_in_page - 1) ==
     ((orig_inode->i_size - 1) >> orig_inode->i_blkbits)) {

  tmp_data_size = orig_inode->i_size & (blocksize - 1);




  if (tmp_data_size == 0)
   tmp_data_size = blocksize;

  data_size = tmp_data_size +
   ((block_len_in_page - 1) << orig_inode->i_blkbits);
 } else
  data_size = block_len_in_page << orig_inode->i_blkbits;

 replaced_size = data_size;

 *err = a_ops->write_begin(o_filp, mapping, offs, data_size, w_flags,
     &page, &fsdata);
 if (unlikely(*err < 0))
  goto out;

 if (!PageUptodate(page)) {
  mapping->a_ops->readpage(o_filp, page);
  lock_page(page);
 }
 wait_on_page_writeback(page);


 try_to_release_page(page, 0);

 replaced_count = mext_replace_branches(handle, orig_inode, donor_inode,
     orig_blk_offset, block_len_in_page,
     &err2);
 if (err2) {
  if (replaced_count) {
   block_len_in_page = replaced_count;
   replaced_size =
    block_len_in_page << orig_inode->i_blkbits;
  } else
   goto out;
 }

 if (!page_has_buffers(page))
  create_empty_buffers(page, 1 << orig_inode->i_blkbits, 0);

 bh = page_buffers(page);
 for (i = 0; i < data_offset_in_page; i++)
  bh = bh->b_this_page;

 for (i = 0; i < block_len_in_page; i++) {
  *err = ext4_get_block(orig_inode,
    (sector_t)(orig_blk_offset + i), bh, 0);
  if (*err < 0)
   goto out;

  if (bh->b_this_page != ((void*)0))
   bh = bh->b_this_page;
 }

 *err = a_ops->write_end(o_filp, mapping, offs, data_size, replaced_size,
          page, fsdata);
 page = ((void*)0);

out:
 if (unlikely(page)) {
  if (PageLocked(page))
   unlock_page(page);
  page_cache_release(page);
  ext4_journal_stop(handle);
 }
out2:
 ext4_journal_stop(handle);

 if (err2)
  *err = err2;

 return replaced_count;
}
