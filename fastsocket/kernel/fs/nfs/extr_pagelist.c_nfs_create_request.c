
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct nfs_page {unsigned int wb_offset; unsigned int wb_pgbase; unsigned int wb_bytes; int wb_kref; int wb_context; int wb_index; struct page* wb_page; struct nfs_lock_context* wb_lock_context; } ;
struct nfs_open_context {int flags; } ;
struct nfs_lock_context {int io_count; } ;
struct inode {int dummy; } ;


 int EBADF ;
 int ENOMEM ;
 struct nfs_page* ERR_CAST (struct nfs_lock_context*) ;
 struct nfs_page* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct nfs_lock_context*) ;
 int NFS_CONTEXT_BAD ;
 int get_nfs_open_context (struct nfs_open_context*) ;
 int kref_init (int *) ;
 struct nfs_lock_context* nfs_get_lock_context (struct nfs_open_context*) ;
 int nfs_iocounter_inc (int *) ;
 struct nfs_page* nfs_page_alloc () ;
 int nfs_page_free (struct nfs_page*) ;
 int page_cache_get (struct page*) ;
 scalar_t__ test_bit (int ,int *) ;

struct nfs_page *
nfs_create_request(struct nfs_open_context *ctx, struct inode *inode,
     struct page *page,
     unsigned int offset, unsigned int count)
{
 struct nfs_page *req;
 struct nfs_lock_context *l_ctx;

 if (test_bit(NFS_CONTEXT_BAD, &ctx->flags))
  return ERR_PTR(-EBADF);

 req = nfs_page_alloc();
 if (req == ((void*)0))
  return ERR_PTR(-ENOMEM);


 l_ctx = nfs_get_lock_context(ctx);
 if (IS_ERR(l_ctx)) {
  nfs_page_free(req);
  return ERR_CAST(l_ctx);
 }
 req->wb_lock_context = l_ctx;
 nfs_iocounter_inc(&l_ctx->io_count);




 req->wb_page = page;
 req->wb_index = page->index;
 page_cache_get(page);
 req->wb_offset = offset;
 req->wb_pgbase = offset;
 req->wb_bytes = count;
 req->wb_context = get_nfs_open_context(ctx);
 kref_init(&req->wb_kref);
 return req;
}
