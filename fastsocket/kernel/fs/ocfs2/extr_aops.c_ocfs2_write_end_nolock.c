
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct ocfs2_write_ctxt {int w_num_pages; unsigned int w_target_from; unsigned int w_target_to; int w_dealloc; TYPE_1__* w_di_bh; int * w_handle; struct page* w_target_page; struct page** w_pages; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_ctime_nsec; int i_mtime_nsec; void* i_ctime; void* i_mtime; void* i_size; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_size; TYPE_3__ i_mtime; TYPE_3__ i_ctime; int i_blocks; int i_sb; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_5__ {int ip_dyn_features; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 TYPE_3__ CURRENT_TIME ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int block_commit_write (struct page*,unsigned int,unsigned int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int flush_dcache_page (struct page*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int) ;
 int mark_inode_dirty (struct inode*) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_write_ctxt (struct ocfs2_write_ctxt*) ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_jbd2_file_inode (int *,struct inode*) ;
 int ocfs2_journal_dirty (int *,TYPE_1__*) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,int *) ;
 scalar_t__ ocfs2_should_order_data (struct inode*) ;
 int ocfs2_write_end_inline (struct inode*,int,unsigned int,unsigned int*,struct ocfs2_dinode*,struct ocfs2_write_ctxt*) ;
 int ocfs2_zero_new_buffers (struct page*,unsigned int,unsigned int) ;
 scalar_t__ page_has_buffers (struct page*) ;
 scalar_t__ unlikely (int) ;

int ocfs2_write_end_nolock(struct address_space *mapping,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page, void *fsdata)
{
 int i;
 unsigned from, to, start = pos & (PAGE_CACHE_SIZE - 1);
 struct inode *inode = mapping->host;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_write_ctxt *wc = fsdata;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;
 handle_t *handle = wc->w_handle;
 struct page *tmppage;

 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
  ocfs2_write_end_inline(inode, pos, len, &copied, di, wc);
  goto out_write_size;
 }

 if (unlikely(copied < len)) {
  if (!PageUptodate(wc->w_target_page))
   copied = 0;

  ocfs2_zero_new_buffers(wc->w_target_page, start+copied,
           start+len);
 }
 flush_dcache_page(wc->w_target_page);

 for(i = 0; i < wc->w_num_pages; i++) {
  tmppage = wc->w_pages[i];

  if (tmppage == wc->w_target_page) {
   from = wc->w_target_from;
   to = wc->w_target_to;

   BUG_ON(from > PAGE_CACHE_SIZE ||
          to > PAGE_CACHE_SIZE ||
          to < from);
  } else {





   from = 0;
   to = PAGE_CACHE_SIZE;
  }

  if (page_has_buffers(tmppage)) {
   if (ocfs2_should_order_data(inode))
    ocfs2_jbd2_file_inode(wc->w_handle, inode);
   block_commit_write(tmppage, from, to);
  }
 }

out_write_size:
 pos += copied;
 if (pos > inode->i_size) {
  i_size_write(inode, pos);
  mark_inode_dirty(inode);
 }
 inode->i_blocks = ocfs2_inode_sector_count(inode);
 di->i_size = cpu_to_le64((u64)i_size_read(inode));
 inode->i_mtime = inode->i_ctime = CURRENT_TIME;
 di->i_mtime = di->i_ctime = cpu_to_le64(inode->i_mtime.tv_sec);
 di->i_mtime_nsec = di->i_ctime_nsec = cpu_to_le32(inode->i_mtime.tv_nsec);
 ocfs2_journal_dirty(handle, wc->w_di_bh);

 ocfs2_commit_trans(osb, handle);

 ocfs2_run_deallocs(osb, &wc->w_dealloc);

 ocfs2_free_write_ctxt(wc);

 return copied;
}
