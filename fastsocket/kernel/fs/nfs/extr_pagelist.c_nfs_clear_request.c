
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {struct nfs_open_context* wb_context; struct nfs_lock_context* wb_lock_context; struct page* wb_page; } ;
struct nfs_open_context {int dummy; } ;
struct nfs_lock_context {int io_count; } ;


 int nfs_iocounter_dec (int *) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int page_cache_release (struct page*) ;
 int put_nfs_open_context (struct nfs_open_context*) ;

__attribute__((used)) static void nfs_clear_request(struct nfs_page *req)
{
 struct page *page = req->wb_page;
 struct nfs_open_context *ctx = req->wb_context;
 struct nfs_lock_context *l_ctx = req->wb_lock_context;

 if (page != ((void*)0)) {
  page_cache_release(page);
  req->wb_page = ((void*)0);
 }
 if (l_ctx != ((void*)0)) {
  nfs_iocounter_dec(&l_ctx->io_count);
  nfs_put_lock_context(l_ctx);
  req->wb_lock_context = ((void*)0);
 }
 if (ctx != ((void*)0)) {
  put_nfs_open_context(ctx);
  req->wb_context = ((void*)0);
 }
}
