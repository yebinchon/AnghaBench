
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {scalar_t__ ia_size; int ia_valid; } ;
struct nfsd_sattrargs {TYPE_1__ attrs; int fh; } ;
struct nfsd_attrstat {int fh; } ;
typedef int __be32 ;


 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,long) ;
 int fh_copy (int *,int *) ;
 int nfsd_return_attrs (int ,struct nfsd_attrstat*) ;
 int nfsd_setattr (struct svc_rqst*,int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static __be32
nfsd_proc_setattr(struct svc_rqst *rqstp, struct nfsd_sattrargs *argp,
       struct nfsd_attrstat *resp)
{
 __be32 nfserr;
 dprintk("nfsd: SETATTR  %s, valid=%x, size=%ld\n",
  SVCFH_fmt(&argp->fh),
  argp->attrs.ia_valid, (long) argp->attrs.ia_size);

 fh_copy(&resp->fh, &argp->fh);
 nfserr = nfsd_setattr(rqstp, &resp->fh, &argp->attrs,0, (time_t)0);
 return nfsd_return_attrs(nfserr, resp);
}
