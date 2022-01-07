
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_diropargs {int len; int name; int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfs3svc_decode_diropargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_diropargs *args)
{
 if (!(p = decode_fh(p, &args->fh))
  || !(p = decode_filename(p, &args->name, &args->len)))
  return 0;

 return xdr_argsize_check(rqstp, p);
}
