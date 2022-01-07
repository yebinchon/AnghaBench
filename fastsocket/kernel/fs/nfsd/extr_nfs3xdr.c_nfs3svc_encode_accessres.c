
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_accessres {scalar_t__ status; int access; int fh; } ;
typedef int __be32 ;


 int * encode_post_op_attr (struct svc_rqst*,int *,int *) ;
 int htonl (int ) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfs3svc_encode_accessres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_accessres *resp)
{
 p = encode_post_op_attr(rqstp, p, &resp->fh);
 if (resp->status == 0)
  *p++ = htonl(resp->access);
 return xdr_ressize_check(rqstp, p);
}
