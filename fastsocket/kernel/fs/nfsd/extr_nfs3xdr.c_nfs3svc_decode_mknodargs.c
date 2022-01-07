
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_mknodargs {scalar_t__ ftype; void* minor; void* major; int attrs; int len; int name; int fh; } ;
typedef int __be32 ;


 scalar_t__ NF3BLK ;
 scalar_t__ NF3CHR ;
 scalar_t__ NF3FIFO ;
 scalar_t__ NF3SOCK ;
 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int * decode_sattr3 (int *,int *) ;
 void* ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfs3svc_decode_mknodargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_mknodargs *args)
{
 if (!(p = decode_fh(p, &args->fh))
  || !(p = decode_filename(p, &args->name, &args->len)))
  return 0;

 args->ftype = ntohl(*p++);

 if (args->ftype == NF3BLK || args->ftype == NF3CHR
  || args->ftype == NF3SOCK || args->ftype == NF3FIFO)
  p = decode_sattr3(p, &args->attrs);

 if (args->ftype == NF3BLK || args->ftype == NF3CHR) {
  args->major = ntohl(*p++);
  args->minor = ntohl(*p++);
 }

 return xdr_argsize_check(rqstp, p);
}
