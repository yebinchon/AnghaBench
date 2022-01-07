
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int dummy; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_CACHE_SIZE ;
 int PageLocked (struct page*) ;
 int cancel_dirty_page (struct page*,int ) ;
 int nfs_clear_request_commit (struct nfs_page*) ;
 int nfs_inode_remove_request (struct nfs_page*) ;
 scalar_t__ nfs_lock_request (struct nfs_page*) ;
 struct nfs_page* nfs_page_find_request (struct page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 int nfs_wait_on_request (struct nfs_page*) ;
 int wait_on_page_writeback (struct page*) ;

int nfs_wb_page_cancel(struct inode *inode, struct page *page)
{
 struct nfs_page *req;
 int ret = 0;

 BUG_ON(!PageLocked(page));
 for (;;) {
  wait_on_page_writeback(page);
  req = nfs_page_find_request(page);
  if (req == ((void*)0))
   break;
  if (nfs_lock_request(req)) {
   nfs_clear_request_commit(req);
   nfs_inode_remove_request(req);




   cancel_dirty_page(page, PAGE_CACHE_SIZE);
   nfs_unlock_and_release_request(req);
   break;
  }
  ret = nfs_wait_on_request(req);
  nfs_release_request(req);
  if (ret < 0)
   break;
 }
 return ret;
}
