
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int err; } ;
struct nfsd3_readdirres {int buflen; scalar_t__ offset; scalar_t__ buffer; scalar_t__ count; int verf; TYPE_1__ common; int fh; struct svc_rqst* rqstp; } ;
struct nfsd3_readdirargs {int count; scalar_t__ cookie; scalar_t__ buffer; int verf; int fh; } ;
typedef int loff_t ;
typedef int __be32 ;


 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int,int ) ;
 int fh_copy (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int nfs3svc_encode_entry ;
 int nfs_ok ;
 int nfsd_readdir (struct svc_rqst*,int *,int *,TYPE_1__*,int ) ;
 int xdr_encode_hyper (scalar_t__,scalar_t__) ;

__attribute__((used)) static __be32
nfsd3_proc_readdir(struct svc_rqst *rqstp, struct nfsd3_readdirargs *argp,
        struct nfsd3_readdirres *resp)
{
 __be32 nfserr;
 int count;

 dprintk("nfsd: READDIR(3)  %s %d bytes at %d\n",
    SVCFH_fmt(&argp->fh),
    argp->count, (u32) argp->cookie);



 count = (argp->count >> 2) - 2;


 fh_copy(&resp->fh, &argp->fh);

 resp->buflen = count;
 resp->common.err = nfs_ok;
 resp->buffer = argp->buffer;
 resp->rqstp = rqstp;
 nfserr = nfsd_readdir(rqstp, &resp->fh, (loff_t*) &argp->cookie,
     &resp->common, nfs3svc_encode_entry);
 memcpy(resp->verf, argp->verf, 8);
 resp->count = resp->buffer - argp->buffer;
 if (resp->offset)
  xdr_encode_hyper(resp->offset, argp->cookie);

 RETURN_STATUS(nfserr);
}
