
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int fh; } ;
struct nfsd3_fsstatres {int stats; } ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_put (int *) ;
 int nfsd_statfs (struct svc_rqst*,int *,int *,int ) ;

__attribute__((used)) static __be32
nfsd3_proc_fsstat(struct svc_rqst * rqstp, struct nfsd_fhandle *argp,
        struct nfsd3_fsstatres *resp)
{
 __be32 nfserr;

 dprintk("nfsd: FSSTAT(3)   %s\n",
    SVCFH_fmt(&argp->fh));

 nfserr = nfsd_statfs(rqstp, &argp->fh, &resp->stats, 0);
 fh_put(&argp->fh);
 RETURN_STATUS(nfserr);
}
