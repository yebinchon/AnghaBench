
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int (* release ) (struct nfs_pgio_header*) ;int flags; TYPE_1__ pages; } ;
struct nfs_page {scalar_t__ wb_bytes; struct page* wb_page; } ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 int NFS_IOHDR_REDO ;
 int PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int list_empty (TYPE_1__*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_readpage_release (struct nfs_page*) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;
 int zero_user (struct page*,int ,unsigned long) ;
 int zero_user_segment (struct page*,int,unsigned long) ;

__attribute__((used)) static void nfs_read_completion(struct nfs_pgio_header *hdr)
{
 unsigned long bytes = 0;

 if (test_bit(NFS_IOHDR_REDO, &hdr->flags))
  goto out;
 while (!list_empty(&hdr->pages)) {
  struct nfs_page *req = nfs_list_entry(hdr->pages.next);
  struct page *page = req->wb_page;

  if (test_bit(NFS_IOHDR_EOF, &hdr->flags)) {
   if (bytes > hdr->good_bytes)
    zero_user(page, 0, PAGE_SIZE);
   else if (hdr->good_bytes - bytes < PAGE_SIZE)
    zero_user_segment(page,
     hdr->good_bytes & ~PAGE_MASK,
     PAGE_SIZE);
  }
  bytes += req->wb_bytes;
  if (test_bit(NFS_IOHDR_ERROR, &hdr->flags)) {
   if (bytes <= hdr->good_bytes)
    SetPageUptodate(page);
  } else
   SetPageUptodate(page);
  nfs_list_remove_request(req);
  nfs_readpage_release(req);
 }
out:
 hdr->release(hdr);
}
