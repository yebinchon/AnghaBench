
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_SB (TYPE_1__*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int block_commit_write (struct page*,unsigned int,unsigned int) ;
 struct page* grab_cache_page (struct address_space*,unsigned long) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_prepare_write_nolock (struct inode*,struct page*,unsigned int,unsigned int) ;
 scalar_t__ ocfs2_should_order_data (struct inode*) ;
 int * ocfs2_start_walk_page_trans (struct inode*,struct page*,unsigned int,unsigned int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ocfs2_write_zero_page(struct inode *inode,
     u64 size)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
 unsigned long index;
 unsigned int offset;
 handle_t *handle = ((void*)0);
 int ret;

 offset = (size & (PAGE_CACHE_SIZE-1));




 if ((offset & (inode->i_sb->s_blocksize - 1)) == 0) {
  offset++;
 }
 index = size >> PAGE_CACHE_SHIFT;

 page = grab_cache_page(mapping, index);
 if (!page) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_prepare_write_nolock(inode, page, offset, offset);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_unlock;
 }

 if (ocfs2_should_order_data(inode)) {
  handle = ocfs2_start_walk_page_trans(inode, page, offset,
           offset);
  if (IS_ERR(handle)) {
   ret = PTR_ERR(handle);
   handle = ((void*)0);
   goto out_unlock;
  }
 }


 ret = block_commit_write(page, offset, offset);
 if (ret < 0)
  mlog_errno(ret);
 else
  ret = 0;

 if (handle)
  ocfs2_commit_trans(OCFS2_SB(inode->i_sb), handle);
out_unlock:
 unlock_page(page);
 page_cache_release(page);
out:
 return ret;
}
