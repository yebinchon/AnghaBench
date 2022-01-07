
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct svc_rqst {int dummy; } ;
struct kstatfs {int f_bsize; int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; } ;
struct nfsd3_fsstatres {scalar_t__ status; int invarsec; struct kstatfs stats; } ;
typedef int __be32 ;


 int htonl (int ) ;
 int * xdr_encode_hyper (int *,int) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;
 int xdr_zero ;

int
nfs3svc_encode_fsstatres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_fsstatres *resp)
{
 struct kstatfs *s = &resp->stats;
 u64 bs = s->f_bsize;

 *p++ = xdr_zero;

 if (resp->status == 0) {
  p = xdr_encode_hyper(p, bs * s->f_blocks);
  p = xdr_encode_hyper(p, bs * s->f_bfree);
  p = xdr_encode_hyper(p, bs * s->f_bavail);
  p = xdr_encode_hyper(p, s->f_files);
  p = xdr_encode_hyper(p, s->f_ffree);
  p = xdr_encode_hyper(p, s->f_ffree);
  *p++ = htonl(resp->invarsec);
 }
 return xdr_ressize_check(rqstp, p);
}
