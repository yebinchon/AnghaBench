
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_pathconfres {scalar_t__ status; int p_case_preserving; int p_case_insensitive; int p_chown_restricted; int p_no_trunc; int p_name_max; int p_link_max; } ;
typedef int __be32 ;


 void* htonl (int ) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;
 int xdr_zero ;

int
nfs3svc_encode_pathconfres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_pathconfres *resp)
{
 *p++ = xdr_zero;

 if (resp->status == 0) {
  *p++ = htonl(resp->p_link_max);
  *p++ = htonl(resp->p_name_max);
  *p++ = htonl(resp->p_no_trunc);
  *p++ = htonl(resp->p_chown_restricted);
  *p++ = htonl(resp->p_case_insensitive);
  *p++ = htonl(resp->p_case_preserving);
 }

 return xdr_ressize_check(rqstp, p);
}
