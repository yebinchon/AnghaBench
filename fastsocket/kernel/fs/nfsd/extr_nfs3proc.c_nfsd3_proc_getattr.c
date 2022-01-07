
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int fh; } ;
struct TYPE_7__ {int fh_dentry; TYPE_2__* fh_export; } ;
struct nfsd3_attrstat {int stat; TYPE_3__ fh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_5__ {int mnt; } ;
struct TYPE_6__ {TYPE_1__ ex_path; } ;


 int NFSD_MAY_BYPASS_GSS_ON_ROOT ;
 int NFSD_MAY_NOP ;
 int RETURN_STATUS (scalar_t__) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_copy (TYPE_3__*,int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,TYPE_3__*,int ,int) ;
 scalar_t__ nfserrno (int) ;
 int vfs_getattr (int ,int ,int *) ;

__attribute__((used)) static __be32
nfsd3_proc_getattr(struct svc_rqst *rqstp, struct nfsd_fhandle *argp,
        struct nfsd3_attrstat *resp)
{
 int err;
 __be32 nfserr;

 dprintk("nfsd: GETATTR(3)  %s\n",
  SVCFH_fmt(&argp->fh));

 fh_copy(&resp->fh, &argp->fh);
 nfserr = fh_verify(rqstp, &resp->fh, 0,
   NFSD_MAY_NOP | NFSD_MAY_BYPASS_GSS_ON_ROOT);
 if (nfserr)
  RETURN_STATUS(nfserr);

 err = vfs_getattr(resp->fh.fh_export->ex_path.mnt,
     resp->fh.fh_dentry, &resp->stat);
 nfserr = nfserrno(err);

 RETURN_STATUS(nfserr);
}
