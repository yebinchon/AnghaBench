
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_getaclargs {int mask; int fh; } ;
typedef int __be32 ;


 int * nfs3svc_decode_fh (int *,int *) ;
 int ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfs3svc_decode_getaclargs(struct svc_rqst *rqstp, __be32 *p,
  struct nfsd3_getaclargs *args)
{
 if (!(p = nfs3svc_decode_fh(p, &args->fh)))
  return 0;
 args->mask = ntohl(*p); p++;

 return xdr_argsize_check(rqstp, p);
}
