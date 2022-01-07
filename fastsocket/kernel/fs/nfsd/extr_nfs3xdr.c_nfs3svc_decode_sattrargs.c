
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;
struct svc_rqst {int dummy; } ;
struct nfsd3_sattrargs {int guardtime; int check_guard; int attrs; int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int * decode_sattr3 (int *,int *) ;
 int * decode_time3 (int *,struct timespec*) ;
 int ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfs3svc_decode_sattrargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_sattrargs *args)
{
 if (!(p = decode_fh(p, &args->fh)))
  return 0;
 p = decode_sattr3(p, &args->attrs);

 if ((args->check_guard = ntohl(*p++)) != 0) {
  struct timespec time;
  p = decode_time3(p, &time);
  args->guardtime = time.tv_sec;
 }

 return xdr_argsize_check(rqstp, p);
}
