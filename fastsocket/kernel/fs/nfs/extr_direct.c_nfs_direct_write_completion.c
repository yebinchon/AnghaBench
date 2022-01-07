
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct nfs_pgio_header {scalar_t__ error; int (* release ) (struct nfs_pgio_header*) ;int inode; int lseg; TYPE_1__ pages; int verf; int flags; scalar_t__ good_bytes; struct nfs_direct_req* dreq; } ;
struct nfs_page {int wb_kref; } ;
struct nfs_direct_req {scalar_t__ flags; scalar_t__ error; int lock; int verf; int count; } ;
struct nfs_commit_info {int dummy; } ;


 int NFS_IOHDR_ERROR ;


 int NFS_IOHDR_REDO ;
 scalar_t__ NFS_ODIRECT_DO_COMMIT ;
 scalar_t__ NFS_ODIRECT_RESCHED_WRITES ;
 int kref_get (int *) ;
 int list_empty (TYPE_1__*) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int memcpy (int *,int ,int) ;
 int nfs_direct_write_complete (struct nfs_direct_req*,int ) ;
 int nfs_init_cinfo_from_dreq (struct nfs_commit_info*,struct nfs_direct_req*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mark_request_commit (struct nfs_page*,int ,struct nfs_commit_info*) ;
 int nfs_unlock_and_release_request (struct nfs_page*) ;
 scalar_t__ put_dreq (struct nfs_direct_req*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void nfs_direct_write_completion(struct nfs_pgio_header *hdr)
{
 struct nfs_direct_req *dreq = hdr->dreq;
 struct nfs_commit_info cinfo;
 int bit = -1;
 struct nfs_page *req = nfs_list_entry(hdr->pages.next);

 if (test_bit(NFS_IOHDR_REDO, &hdr->flags))
  goto out_put;

 nfs_init_cinfo_from_dreq(&cinfo, dreq);

 spin_lock(&dreq->lock);

 if (test_bit(NFS_IOHDR_ERROR, &hdr->flags)) {
  dreq->flags = 0;
  dreq->error = hdr->error;
 }
 if (dreq->error != 0)
  bit = NFS_IOHDR_ERROR;
 else {
  dreq->count += hdr->good_bytes;
  if (test_bit(128, &hdr->flags)) {
   dreq->flags = NFS_ODIRECT_RESCHED_WRITES;
   bit = 128;
  } else if (test_bit(129, &hdr->flags)) {
   if (dreq->flags == NFS_ODIRECT_RESCHED_WRITES)
    bit = 128;
   else if (dreq->flags == 0) {
    memcpy(&dreq->verf, hdr->verf,
           sizeof(dreq->verf));
    bit = 129;
    dreq->flags = NFS_ODIRECT_DO_COMMIT;
   } else if (dreq->flags == NFS_ODIRECT_DO_COMMIT) {
    if (memcmp(&dreq->verf, hdr->verf, sizeof(dreq->verf))) {
     dreq->flags = NFS_ODIRECT_RESCHED_WRITES;
     bit = 128;
    } else
     bit = 129;
   }
  }
 }
 spin_unlock(&dreq->lock);

 while (!list_empty(&hdr->pages)) {
  req = nfs_list_entry(hdr->pages.next);
  nfs_list_remove_request(req);
  switch (bit) {
  case 128:
  case 129:
   kref_get(&req->wb_kref);
   nfs_mark_request_commit(req, hdr->lseg, &cinfo);
  }
  nfs_unlock_and_release_request(req);
 }

out_put:
 if (put_dreq(dreq))
  nfs_direct_write_complete(dreq, hdr->inode);
 hdr->release(hdr);
}
