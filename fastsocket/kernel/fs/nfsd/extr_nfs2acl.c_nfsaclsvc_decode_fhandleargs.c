
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int fh; } ;
typedef int __be32 ;


 int * nfs2svc_decode_fh (int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfsaclsvc_decode_fhandleargs(struct svc_rqst *rqstp, __be32 *p,
  struct nfsd_fhandle *argp)
{
 if (!(p = nfs2svc_decode_fh(p, &argp->fh)))
  return 0;
 return xdr_argsize_check(rqstp, p);
}
