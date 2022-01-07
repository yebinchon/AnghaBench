
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
typedef int __be32 ;


 int * encode_post_op_attr (struct svc_rqst*,int *,struct svc_fh*) ;

__be32 *
nfs3svc_encode_post_op_attr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{
 return encode_post_op_attr(rqstp, p, fhp);
}
