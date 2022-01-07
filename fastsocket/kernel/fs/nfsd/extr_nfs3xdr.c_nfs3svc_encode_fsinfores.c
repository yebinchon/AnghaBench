
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_fsinfores {scalar_t__ status; int f_properties; int f_maxfilesize; int f_dtpref; int f_wtmult; int f_wtpref; int f_wtmax; int f_rtmult; int f_rtpref; int f_rtmax; } ;
typedef int __be32 ;


 void* htonl (int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int xdr_one ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;
 void* xdr_zero ;

int
nfs3svc_encode_fsinfores(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_fsinfores *resp)
{
 *p++ = xdr_zero;

 if (resp->status == 0) {
  *p++ = htonl(resp->f_rtmax);
  *p++ = htonl(resp->f_rtpref);
  *p++ = htonl(resp->f_rtmult);
  *p++ = htonl(resp->f_wtmax);
  *p++ = htonl(resp->f_wtpref);
  *p++ = htonl(resp->f_wtmult);
  *p++ = htonl(resp->f_dtpref);
  p = xdr_encode_hyper(p, resp->f_maxfilesize);
  *p++ = xdr_one;
  *p++ = xdr_zero;
  *p++ = htonl(resp->f_properties);
 }

 return xdr_ressize_check(rqstp, p);
}
