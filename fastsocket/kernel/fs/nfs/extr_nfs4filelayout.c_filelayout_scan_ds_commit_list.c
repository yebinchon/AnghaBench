
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int * clseg; int * wlseg; struct list_head committing; struct list_head written; } ;
struct nfs_commit_info {TYPE_1__* ds; } ;
struct TYPE_2__ {int nwritten; int ncommitting; } ;


 int get_lseg (int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 int transfer_commit_list (struct list_head*,struct list_head*,struct nfs_commit_info*,int) ;

__attribute__((used)) static int
filelayout_scan_ds_commit_list(struct pnfs_commit_bucket *bucket,
          struct nfs_commit_info *cinfo,
          int max)
{
 struct list_head *src = &bucket->written;
 struct list_head *dst = &bucket->committing;
 int ret;

 ret = transfer_commit_list(src, dst, cinfo, max);
 if (ret) {
  cinfo->ds->nwritten -= ret;
  cinfo->ds->ncommitting += ret;
  bucket->clseg = bucket->wlseg;
  if (list_empty(src))
   bucket->wlseg = ((void*)0);
  else
   get_lseg(bucket->clseg);
 }
 return ret;
}
