
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int fh; } ;
struct nfsd_attrstat {int fh; } ;
typedef int __be32 ;


 int NFSD_MAY_NOP ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_copy (int *,int *) ;
 int fh_verify (struct svc_rqst*,int *,int ,int ) ;

__attribute__((used)) static __be32 nfsacld_proc_getattr(struct svc_rqst * rqstp,
  struct nfsd_fhandle *argp, struct nfsd_attrstat *resp)
{
 dprintk("nfsd: GETATTR  %s\n", SVCFH_fmt(&argp->fh));

 fh_copy(&resp->fh, &argp->fh);
 return fh_verify(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
}
