
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_fhandle {int fh; } ;
typedef int __be32 ;


 int fh_put (int *) ;

int
nfssvc_release_fhandle(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_fhandle *resp)
{
 fh_put(&resp->fh);
 return 1;
}
