
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct svc_rqst {int rq_vec; } ;
struct TYPE_5__ {TYPE_1__* fh_dentry; } ;
struct nfsd3_readres {scalar_t__ count; int eof; TYPE_2__ fh; } ;
struct nfsd3_readargs {scalar_t__ count; scalar_t__ offset; int vlen; int fh; } ;
struct inode {scalar_t__ i_size; } ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int NFS3_POST_OP_ATTR_WORDS ;
 int RETURN_STATUS (scalar_t__) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,unsigned long,unsigned long) ;
 int fh_copy (TYPE_2__*,int *) ;
 scalar_t__ nfsd_read (struct svc_rqst*,TYPE_2__*,scalar_t__,int ,int ,scalar_t__*) ;
 scalar_t__ svc_max_payload (struct svc_rqst*) ;
 int svc_reserve_auth (struct svc_rqst*,scalar_t__) ;

__attribute__((used)) static __be32
nfsd3_proc_read(struct svc_rqst *rqstp, struct nfsd3_readargs *argp,
            struct nfsd3_readres *resp)
{
 __be32 nfserr;
 u32 max_blocksize = svc_max_payload(rqstp);

 dprintk("nfsd: READ(3) %s %lu bytes at %lu\n",
    SVCFH_fmt(&argp->fh),
    (unsigned long) argp->count,
    (unsigned long) argp->offset);






 resp->count = argp->count;
 if (max_blocksize < resp->count)
  resp->count = max_blocksize;

 svc_reserve_auth(rqstp, ((1 + NFS3_POST_OP_ATTR_WORDS + 3)<<2) + resp->count +4);

 fh_copy(&resp->fh, &argp->fh);
 nfserr = nfsd_read(rqstp, &resp->fh,
      argp->offset,
         rqstp->rq_vec, argp->vlen,
      &resp->count);
 if (nfserr == 0) {
  struct inode *inode = resp->fh.fh_dentry->d_inode;

  resp->eof = (argp->offset + resp->count) >= inode->i_size;
 }

 RETURN_STATUS(nfserr);
}
