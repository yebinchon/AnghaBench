
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd3_commitres {scalar_t__ status; int fh; } ;
typedef int __be32 ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;


 int * encode_wcc_data (struct svc_rqst*,int *,int *) ;
 void* htonl (int ) ;
 TYPE_1__ nfssvc_boot ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfs3svc_encode_commitres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_commitres *resp)
{
 p = encode_wcc_data(rqstp, p, &resp->fh);

 if (resp->status == 0) {
  *p++ = htonl(nfssvc_boot.tv_sec);
  *p++ = htonl(nfssvc_boot.tv_usec);
 }
 return xdr_ressize_check(rqstp, p);
}
