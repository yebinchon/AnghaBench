
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct fuse_req {unsigned int num_pages; struct page** pages; } ;


 int put_page (struct page*) ;
 int set_page_dirty_lock (struct page*) ;

__attribute__((used)) static void fuse_release_user_pages(struct fuse_req *req, int write)
{
 unsigned i;

 for (i = 0; i < req->num_pages; i++) {
  struct page *page = req->pages[i];
  if (write)
   set_page_dirty_lock(page);
  put_page(page);
 }
}
