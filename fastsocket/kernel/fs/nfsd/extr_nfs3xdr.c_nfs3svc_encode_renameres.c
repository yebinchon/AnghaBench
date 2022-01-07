
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_renameres {int tfh; int ffh; } ;
typedef int __be32 ;


 int * encode_wcc_data (struct svc_rqst*,int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfs3svc_encode_renameres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_renameres *resp)
{
 p = encode_wcc_data(rqstp, p, &resp->ffh);
 p = encode_wcc_data(rqstp, p, &resp->tfh);
 return xdr_ressize_check(rqstp, p);
}
