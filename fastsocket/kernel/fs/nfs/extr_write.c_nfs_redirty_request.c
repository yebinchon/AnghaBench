
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_page; } ;


 int nfs_end_page_writeback (int ) ;
 int nfs_mark_request_dirty (struct nfs_page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_unlock_request (struct nfs_page*) ;

__attribute__((used)) static void nfs_redirty_request(struct nfs_page *req)
{
 nfs_mark_request_dirty(req);
 nfs_unlock_request(req);
 nfs_end_page_writeback(req->wb_page);
 nfs_release_request(req);
}
