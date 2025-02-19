
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct fuse_req {unsigned int num_pages; struct page** pages; TYPE_1__* page_descs; } ;
struct fuse_copy_state {struct fuse_req* req; } ;
struct TYPE_2__ {unsigned int offset; int length; } ;


 int fuse_copy_page (struct fuse_copy_state*,struct page*,unsigned int,unsigned int,int) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static int fuse_copy_pages(struct fuse_copy_state *cs, unsigned nbytes,
      int zeroing)
{
 unsigned i;
 struct fuse_req *req = cs->req;

 for (i = 0; i < req->num_pages && (nbytes || zeroing); i++) {
  unsigned offset = req->page_descs[i].offset;
  unsigned count = min(nbytes, req->page_descs[i].length);
  struct page *page = req->pages[i];
  int err = fuse_copy_page(cs, page, offset, count, zeroing);
  if (err)
   return err;

  nbytes -= count;
 }
 return 0;
}
