
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_accessres {int fh; } ;
typedef int __be32 ;


 int fh_put (int *) ;

__attribute__((used)) static int nfsaclsvc_release_access(struct svc_rqst *rqstp, __be32 *p,
               struct nfsd3_accessres *resp)
{
       fh_put(&resp->fh);
       return 1;
}
