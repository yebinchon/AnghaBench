
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_diropres {int fh; } ;
struct nfsd_diropargs {int fh; int len; int name; } ;
typedef int __be32 ;


 int NFS_FHSIZE ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int ,int ) ;
 int fh_init (int *,int ) ;
 int fh_put (int *) ;
 int nfsd_lookup (struct svc_rqst*,int *,int ,int ,int *) ;
 int nfsd_return_dirop (int ,struct nfsd_diropres*) ;

__attribute__((used)) static __be32
nfsd_proc_lookup(struct svc_rqst *rqstp, struct nfsd_diropargs *argp,
      struct nfsd_diropres *resp)
{
 __be32 nfserr;

 dprintk("nfsd: LOOKUP   %s %.*s\n",
  SVCFH_fmt(&argp->fh), argp->len, argp->name);

 fh_init(&resp->fh, NFS_FHSIZE);
 nfserr = nfsd_lookup(rqstp, &argp->fh, argp->name, argp->len,
     &resp->fh);

 fh_put(&argp->fh);
 return nfsd_return_dirop(nfserr, resp);
}
