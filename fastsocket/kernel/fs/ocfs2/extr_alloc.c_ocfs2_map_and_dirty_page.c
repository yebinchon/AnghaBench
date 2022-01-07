
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;


 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int mlog_errno (int) ;
 int ocfs2_jbd2_file_inode (int *,struct inode*) ;
 int ocfs2_map_page_blocks (struct page*,int *,struct inode*,unsigned int,unsigned int,int ) ;
 scalar_t__ ocfs2_should_order_data (struct inode*) ;
 int ocfs2_zero_func ;
 int page_buffers (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int*,int ) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

void ocfs2_map_and_dirty_page(struct inode *inode, handle_t *handle,
         unsigned int from, unsigned int to,
         struct page *page, int zero, u64 *phys)
{
 int ret, partial = 0;

 ret = ocfs2_map_page_blocks(page, phys, inode, from, to, 0);
 if (ret)
  mlog_errno(ret);

 if (zero)
  zero_user_segment(page, from, to);






 ret = walk_page_buffers(handle, page_buffers(page),
    from, to, &partial,
    ocfs2_zero_func);
 if (ret < 0)
  mlog_errno(ret);
 else if (ocfs2_should_order_data(inode)) {
  ret = ocfs2_jbd2_file_inode(handle, inode);
  if (ret < 0)
   mlog_errno(ret);
 }

 if (!partial)
  SetPageUptodate(page);

 flush_dcache_page(page);
}
