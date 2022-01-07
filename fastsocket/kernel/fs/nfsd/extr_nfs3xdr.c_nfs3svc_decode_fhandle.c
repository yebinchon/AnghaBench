
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfs3svc_decode_fhandle(struct svc_rqst *rqstp, __be32 *p, struct nfsd_fhandle *args)
{
 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 return xdr_argsize_check(rqstp, p);
}
