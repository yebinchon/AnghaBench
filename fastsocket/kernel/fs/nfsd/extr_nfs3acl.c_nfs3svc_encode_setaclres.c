
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_attrstat {int fh; } ;
typedef int __be32 ;


 int * nfs3svc_encode_post_op_attr (struct svc_rqst*,int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfs3svc_encode_setaclres(struct svc_rqst *rqstp, __be32 *p,
  struct nfsd3_attrstat *resp)
{
 p = nfs3svc_encode_post_op_attr(rqstp, p, &resp->fh);

 return xdr_ressize_check(rqstp, p);
}
