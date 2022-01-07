
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_ds_commit_info {int nbuckets; struct pnfs_commit_bucket* buckets; } ;
struct pnfs_commit_bucket {int * clseg; int committing; } ;
struct nfs_commit_info {struct pnfs_ds_commit_info* ds; } ;
struct nfs_commit_data {int ds_commit_index; int pages; int * lseg; } ;
struct list_head {int dummy; } ;


 int list_add (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 struct nfs_commit_data* nfs_commitdata_alloc () ;
 int nfs_retry_commit (int *,int *,struct nfs_commit_info*) ;
 int put_lseg (int *) ;

__attribute__((used)) static unsigned int
alloc_ds_commits(struct nfs_commit_info *cinfo, struct list_head *list)
{
 struct pnfs_ds_commit_info *fl_cinfo;
 struct pnfs_commit_bucket *bucket;
 struct nfs_commit_data *data;
 int i, j;
 unsigned int nreq = 0;

 fl_cinfo = cinfo->ds;
 bucket = fl_cinfo->buckets;
 for (i = 0; i < fl_cinfo->nbuckets; i++, bucket++) {
  if (list_empty(&bucket->committing))
   continue;
  data = nfs_commitdata_alloc();
  if (!data)
   break;
  data->ds_commit_index = i;
  data->lseg = bucket->clseg;
  bucket->clseg = ((void*)0);
  list_add(&data->pages, list);
  nreq++;
 }


 for (j = i; j < fl_cinfo->nbuckets; j++, bucket++) {
  if (list_empty(&bucket->committing))
   continue;
  nfs_retry_commit(&bucket->committing, bucket->clseg, cinfo);
  put_lseg(bucket->clseg);
  bucket->clseg = ((void*)0);
 }

 return nreq;
}
