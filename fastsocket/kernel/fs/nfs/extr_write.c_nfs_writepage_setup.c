
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page {int wb_bytes; int wb_pgbase; } ;
struct nfs_open_context {int dummy; } ;


 scalar_t__ IS_ERR (struct nfs_page*) ;
 int PTR_ERR (struct nfs_page*) ;
 int nfs_grow_file (struct page*,unsigned int,unsigned int) ;
 int nfs_mark_request_dirty (struct nfs_page*) ;
 int nfs_mark_uptodate (struct page*,int ,int ) ;
 struct nfs_page* nfs_setup_write_request (struct nfs_open_context*,struct page*,unsigned int,unsigned int) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;

__attribute__((used)) static int nfs_writepage_setup(struct nfs_open_context *ctx, struct page *page,
  unsigned int offset, unsigned int count)
{
 struct nfs_page *req;

 req = nfs_setup_write_request(ctx, page, offset, count);
 if (IS_ERR(req))
  return PTR_ERR(req);

 nfs_grow_file(page, offset, count);
 nfs_mark_uptodate(page, req->wb_pgbase, req->wb_bytes);
 nfs_mark_request_dirty(req);
 nfs_unlock_and_release_request(req);
 return 0;
}
