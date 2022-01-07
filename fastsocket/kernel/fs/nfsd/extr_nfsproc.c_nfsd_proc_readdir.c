
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int err; } ;
struct nfsd_readdirres {int buflen; int * offset; scalar_t__ buffer; scalar_t__ count; TYPE_1__ common; } ;
struct nfsd_readdirargs {int count; int fh; scalar_t__ buffer; int cookie; } ;
typedef int loff_t ;
typedef int __be32 ;


 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int,int ) ;
 int fh_put (int *) ;
 int htonl (int ) ;
 int nfs_ok ;
 int nfsd_readdir (struct svc_rqst*,int *,int *,TYPE_1__*,int ) ;
 int nfssvc_encode_entry ;

__attribute__((used)) static __be32
nfsd_proc_readdir(struct svc_rqst *rqstp, struct nfsd_readdirargs *argp,
       struct nfsd_readdirres *resp)
{
 int count;
 __be32 nfserr;
 loff_t offset;

 dprintk("nfsd: READDIR  %s %d bytes at %d\n",
  SVCFH_fmt(&argp->fh),
  argp->count, argp->cookie);


 count = (argp->count >> 2) - 2;


 count -= 2;
 if (count < 0)
  count = 0;

 resp->buffer = argp->buffer;
 resp->offset = ((void*)0);
 resp->buflen = count;
 resp->common.err = nfs_ok;

 offset = argp->cookie;
 nfserr = nfsd_readdir(rqstp, &argp->fh, &offset,
         &resp->common, nfssvc_encode_entry);

 resp->count = resp->buffer - argp->buffer;
 if (resp->offset)
  *resp->offset = htonl(offset);

 fh_put(&argp->fh);
 return nfserr;
}
