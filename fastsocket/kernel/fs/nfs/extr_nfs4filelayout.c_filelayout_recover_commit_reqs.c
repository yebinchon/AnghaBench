
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_commit_bucket {int * wlseg; int written; } ;
struct nfs_commit_info {TYPE_1__* ds; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int nbuckets; scalar_t__ nwritten; struct pnfs_commit_bucket* buckets; } ;


 int BUG_ON (int) ;
 int list_empty (int *) ;
 int put_lseg (int *) ;
 scalar_t__ transfer_commit_list (int *,struct list_head*,struct nfs_commit_info*,int ) ;

__attribute__((used)) static void filelayout_recover_commit_reqs(struct list_head *dst,
        struct nfs_commit_info *cinfo)
{
 struct pnfs_commit_bucket *b;
 int i;





 for (i = 0, b = cinfo->ds->buckets; i < cinfo->ds->nbuckets; i++, b++) {
  if (transfer_commit_list(&b->written, dst, cinfo, 0)) {
   BUG_ON(!list_empty(&b->written));
   put_lseg(b->wlseg);
   b->wlseg = ((void*)0);
  }
 }
 cinfo->ds->nwritten = 0;
}
