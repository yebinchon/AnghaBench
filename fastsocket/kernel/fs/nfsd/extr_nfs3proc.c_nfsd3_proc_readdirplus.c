
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int rq_resused; int * rq_respages; } ;
struct TYPE_2__ {int err; } ;
struct nfsd3_readdirres {int count; int buflen; void** offset; void** offset1; scalar_t__ buffer; int verf; TYPE_1__ common; int fh; struct svc_rqst* rqstp; } ;
struct nfsd3_readdirargs {int count; int cookie; int verf; scalar_t__ buffer; int fh; } ;
typedef int loff_t ;
typedef scalar_t__ caddr_t ;
typedef int __be32 ;


 scalar_t__ PAGE_SIZE ;
 int RETURN_STATUS (int ) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ,int,int ) ;
 int fh_copy (int *,int *) ;
 void* htonl (int) ;
 int memcpy (int ,int ,int) ;
 int nfs3svc_encode_entry_plus ;
 int nfs_ok ;
 int nfsd_readdir (struct svc_rqst*,int *,int*,TYPE_1__*,int ) ;
 scalar_t__ page_address (int ) ;
 scalar_t__ unlikely (void**) ;
 int xdr_encode_hyper (void**,int) ;

__attribute__((used)) static __be32
nfsd3_proc_readdirplus(struct svc_rqst *rqstp, struct nfsd3_readdirargs *argp,
            struct nfsd3_readdirres *resp)
{
 __be32 nfserr;
 int count = 0;
 loff_t offset;
 int i;
 caddr_t page_addr = ((void*)0);

 dprintk("nfsd: READDIR+(3) %s %d bytes at %d\n",
    SVCFH_fmt(&argp->fh),
    argp->count, (u32) argp->cookie);



 resp->count = (argp->count >> 2) - 2;


 fh_copy(&resp->fh, &argp->fh);

 resp->common.err = nfs_ok;
 resp->buffer = argp->buffer;
 resp->buflen = resp->count;
 resp->rqstp = rqstp;
 offset = argp->cookie;
 nfserr = nfsd_readdir(rqstp, &resp->fh,
         &offset,
         &resp->common,
         nfs3svc_encode_entry_plus);
 memcpy(resp->verf, argp->verf, 8);
 for (i=1; i<rqstp->rq_resused ; i++) {
  page_addr = page_address(rqstp->rq_respages[i]);

  if (((caddr_t)resp->buffer >= page_addr) &&
      ((caddr_t)resp->buffer < page_addr + PAGE_SIZE)) {
   count += (caddr_t)resp->buffer - page_addr;
   break;
  }
  count += PAGE_SIZE;
 }
 resp->count = count >> 2;
 if (resp->offset) {
  if (unlikely(resp->offset1)) {

   *resp->offset = htonl(offset >> 32);
   *resp->offset1 = htonl(offset & 0xffffffff);
   resp->offset1 = ((void*)0);
  } else {
   xdr_encode_hyper(resp->offset, offset);
  }
 }

 RETURN_STATUS(nfserr);
}
