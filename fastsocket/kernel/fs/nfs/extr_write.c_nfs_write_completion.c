
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int (* release ) (struct nfs_pgio_header*) ;int lseg; int verf; int flags; int error; TYPE_1__ pages; int inode; } ;
struct nfs_page {int wb_page; int wb_verf; int wb_context; scalar_t__ wb_bytes; } ;
struct nfs_commit_info {int dummy; } ;


 int NFS_IOHDR_ERROR ;
 int NFS_IOHDR_NEED_COMMIT ;
 int NFS_IOHDR_NEED_RESCHED ;
 int NFS_IOHDR_REDO ;
 int list_empty (TYPE_1__*) ;
 int memcpy (int *,int ,int) ;
 int nfs_context_set_write_error (int ,int ) ;
 int nfs_end_page_writeback (int ) ;
 int nfs_init_cinfo_from_inode (struct nfs_commit_info*,int ) ;
 int nfs_inode_remove_request (struct nfs_page*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mark_request_commit (struct nfs_page*,int ,struct nfs_commit_info*) ;
 int nfs_mark_request_dirty (struct nfs_page*) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_set_pageerror (int ) ;
 int nfs_unlock_request (struct nfs_page*) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs_write_completion(struct nfs_pgio_header *hdr)
{
 struct nfs_commit_info cinfo;
 unsigned long bytes = 0;

 if (test_bit(NFS_IOHDR_REDO, &hdr->flags))
  goto out;
 nfs_init_cinfo_from_inode(&cinfo, hdr->inode);
 while (!list_empty(&hdr->pages)) {
  struct nfs_page *req = nfs_list_entry(hdr->pages.next);

  bytes += req->wb_bytes;
  nfs_list_remove_request(req);
  if (test_bit(NFS_IOHDR_ERROR, &hdr->flags) &&
      (hdr->good_bytes < bytes)) {
   nfs_set_pageerror(req->wb_page);
   nfs_context_set_write_error(req->wb_context, hdr->error);
   goto remove_req;
  }
  if (test_bit(NFS_IOHDR_NEED_RESCHED, &hdr->flags)) {
   nfs_mark_request_dirty(req);
   goto next;
  }
  if (test_bit(NFS_IOHDR_NEED_COMMIT, &hdr->flags)) {
   memcpy(&req->wb_verf, hdr->verf, sizeof(req->wb_verf));
   nfs_mark_request_commit(req, hdr->lseg, &cinfo);
   goto next;
  }
remove_req:
  nfs_inode_remove_request(req);
next:
  nfs_unlock_request(req);
  nfs_end_page_writeback(req->wb_page);
  nfs_release_request(req);
 }
out:
 hdr->release(hdr);
}
