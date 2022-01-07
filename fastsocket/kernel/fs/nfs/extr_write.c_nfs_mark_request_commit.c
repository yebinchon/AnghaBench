
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;



void
nfs_mark_request_commit(struct nfs_page *req, struct pnfs_layout_segment *lseg,
   struct nfs_commit_info *cinfo)
{
}
