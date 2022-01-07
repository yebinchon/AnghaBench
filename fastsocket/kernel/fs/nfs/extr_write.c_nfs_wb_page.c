
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ range_end; scalar_t__ range_start; int nr_to_write; int sync_mode; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int FLUSH_SYNC ;
 int PAGE_CACHE_SIZE ;
 int PagePrivate (struct page*) ;
 int WB_SYNC_ALL ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int nfs_commit_inode (struct inode*,int ) ;
 int nfs_writepage_locked (struct page*,struct writeback_control*) ;
 scalar_t__ page_offset (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

int nfs_wb_page(struct inode *inode, struct page *page)
{
 loff_t range_start = page_offset(page);
 loff_t range_end = range_start + (loff_t)(PAGE_CACHE_SIZE - 1);
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = 0,
  .range_start = range_start,
  .range_end = range_end,
 };
 int ret;

 for (;;) {
  wait_on_page_writeback(page);
  if (clear_page_dirty_for_io(page)) {
   ret = nfs_writepage_locked(page, &wbc);
   if (ret < 0)
    goto out_error;
   continue;
  }
  if (!PagePrivate(page))
   break;
  ret = nfs_commit_inode(inode, FLUSH_SYNC);
  if (ret < 0)
   goto out_error;
 }
 return 0;
out_error:
 return ret;
}
