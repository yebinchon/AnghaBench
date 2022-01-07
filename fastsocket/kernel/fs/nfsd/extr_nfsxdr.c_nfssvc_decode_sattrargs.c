
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_sattrargs {int attrs; int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int * decode_sattr (int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfssvc_decode_sattrargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_sattrargs *args)
{
 p = decode_fh(p, &args->fh);
 if (!p)
  return 0;
 p = decode_sattr(p, &args->attrs);

 return xdr_argsize_check(rqstp, p);
}
