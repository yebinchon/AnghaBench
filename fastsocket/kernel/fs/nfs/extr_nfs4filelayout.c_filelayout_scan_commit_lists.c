
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_info {TYPE_1__* ds; } ;
struct TYPE_2__ {int nbuckets; int * buckets; } ;


 int filelayout_scan_ds_commit_list (int *,struct nfs_commit_info*,int) ;

__attribute__((used)) static int filelayout_scan_commit_lists(struct nfs_commit_info *cinfo,
     int max)
{
 int i, rv = 0, cnt;

 for (i = 0; i < cinfo->ds->nbuckets && max != 0; i++) {
  cnt = filelayout_scan_ds_commit_list(&cinfo->ds->buckets[i],
           cinfo, max);
  max -= cnt;
  rv += cnt;
 }
 return rv;
}
