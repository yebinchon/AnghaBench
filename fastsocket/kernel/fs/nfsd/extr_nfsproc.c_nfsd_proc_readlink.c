
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_readlinkres {int len; } ;
struct nfsd_readlinkargs {int fh; int buffer; } ;
typedef int __be32 ;


 int NFS_MAXPATHLEN ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 int fh_put (int *) ;
 int nfsd_readlink (struct svc_rqst*,int *,int ,int *) ;

__attribute__((used)) static __be32
nfsd_proc_readlink(struct svc_rqst *rqstp, struct nfsd_readlinkargs *argp,
        struct nfsd_readlinkres *resp)
{
 __be32 nfserr;

 dprintk("nfsd: READLINK %s\n", SVCFH_fmt(&argp->fh));


 resp->len = NFS_MAXPATHLEN;
 nfserr = nfsd_readlink(rqstp, &argp->fh, argp->buffer, &resp->len);

 fh_put(&argp->fh);
 return nfserr;
}
