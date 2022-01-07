
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_diropres {int stat; int fh; } ;
typedef int __be32 ;


 int * encode_fattr (struct svc_rqst*,int *,int *,int *) ;
 int * encode_fh (int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfssvc_encode_diropres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_diropres *resp)
{
 p = encode_fh(p, &resp->fh);
 p = encode_fattr(rqstp, p, &resp->fh, &resp->stat);
 return xdr_ressize_check(rqstp, p);
}
