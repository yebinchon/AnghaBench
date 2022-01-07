
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_mknodargs {size_t ftype; scalar_t__ major; scalar_t__ minor; int attrs; int len; int name; int fh; } ;
struct nfsd3_diropres {int dirfh; int fh; } ;
typedef int dev_t ;
typedef int __be32 ;


 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 int MKDEV (scalar_t__,scalar_t__) ;
 size_t NF3BAD ;
 size_t NF3BLK ;
 size_t NF3CHR ;
 size_t NF3FIFO ;
 size_t NF3SOCK ;
 int NFS3_FHSIZE ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_copy (int *,int *) ;
 int fh_init (int *,int ) ;
 int fh_unlock (int *) ;
 int* nfs3_ftypes ;
 int nfsd_create (struct svc_rqst*,int *,int ,int ,int *,int,int ,int *) ;
 int nfserr_inval ;

__attribute__((used)) static __be32
nfsd3_proc_mknod(struct svc_rqst *rqstp, struct nfsd3_mknodargs *argp,
      struct nfsd3_diropres *resp)
{
 __be32 nfserr;
 int type;
 dev_t rdev = 0;

 dprintk("nfsd: MKNOD(3)    %s %.*s\n",
    SVCFH_fmt(&argp->fh),
    argp->len,
    argp->name);

 fh_copy(&resp->dirfh, &argp->fh);
 fh_init(&resp->fh, NFS3_FHSIZE);

 if (argp->ftype == 0 || argp->ftype >= NF3BAD)
  RETURN_STATUS(nfserr_inval);
 if (argp->ftype == NF3CHR || argp->ftype == NF3BLK) {
  rdev = MKDEV(argp->major, argp->minor);
  if (MAJOR(rdev) != argp->major ||
      MINOR(rdev) != argp->minor)
   RETURN_STATUS(nfserr_inval);
 } else
  if (argp->ftype != NF3SOCK && argp->ftype != NF3FIFO)
   RETURN_STATUS(nfserr_inval);

 type = nfs3_ftypes[argp->ftype];
 nfserr = nfsd_create(rqstp, &resp->dirfh, argp->name, argp->len,
        &argp->attrs, type, rdev, &resp->fh);
 fh_unlock(&resp->dirfh);
 RETURN_STATUS(nfserr);
}
