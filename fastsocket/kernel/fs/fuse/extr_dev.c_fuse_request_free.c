
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {scalar_t__ pages; scalar_t__ inline_pages; scalar_t__ page_descs; } ;


 int fuse_req_cachep ;
 int kfree (scalar_t__) ;
 int kmem_cache_free (int ,struct fuse_req*) ;

void fuse_request_free(struct fuse_req *req)
{
 if (req->pages != req->inline_pages) {
  kfree(req->pages);
  kfree(req->page_descs);
 }
 kmem_cache_free(fuse_req_cachep, req);
}
