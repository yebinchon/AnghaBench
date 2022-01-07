
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ocfs2_write_ctxt {int w_num_pages; int w_handle; struct page** w_pages; int w_target_page; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int PAGE_CACHE_SIZE ;
 int block_commit_write (struct page*,unsigned int,unsigned int) ;
 int ocfs2_jbd2_file_inode (int ,struct inode*) ;
 scalar_t__ ocfs2_should_order_data (struct inode*) ;
 int ocfs2_zero_new_buffers (int ,unsigned int,unsigned int) ;
 scalar_t__ page_has_buffers (struct page*) ;

__attribute__((used)) static void ocfs2_write_failure(struct inode *inode,
    struct ocfs2_write_ctxt *wc,
    loff_t user_pos, unsigned user_len)
{
 int i;
 unsigned from = user_pos & (PAGE_CACHE_SIZE - 1),
  to = user_pos + user_len;
 struct page *tmppage;

 ocfs2_zero_new_buffers(wc->w_target_page, from, to);

 for(i = 0; i < wc->w_num_pages; i++) {
  tmppage = wc->w_pages[i];

  if (page_has_buffers(tmppage)) {
   if (ocfs2_should_order_data(inode))
    ocfs2_jbd2_file_inode(wc->w_handle, inode);

   block_commit_write(tmppage, from, to);
  }
 }
}
