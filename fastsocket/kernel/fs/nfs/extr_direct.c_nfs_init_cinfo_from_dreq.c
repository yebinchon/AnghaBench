
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int ds_cinfo; int mds_cinfo; int lock; } ;
struct nfs_commit_info {int * completion_ops; struct nfs_direct_req* dreq; int * ds; int * mds; int * lock; } ;


 int nfs_direct_commit_completion_ops ;

void nfs_init_cinfo_from_dreq(struct nfs_commit_info *cinfo,
         struct nfs_direct_req *dreq)
{
 cinfo->lock = &dreq->lock;
 cinfo->mds = &dreq->mds_cinfo;
 cinfo->ds = &dreq->ds_cinfo;
 cinfo->dreq = dreq;
 cinfo->completion_ops = &nfs_direct_commit_completion_ops;
}
