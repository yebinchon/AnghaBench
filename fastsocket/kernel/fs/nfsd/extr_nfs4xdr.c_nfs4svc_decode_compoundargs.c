
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int page_len; int pages; TYPE_1__* head; } ;
struct svc_rqst {TYPE_2__ rq_arg; } ;
struct nfsd4_compoundargs {struct svc_rqst* rqstp; int iops; int ops; int * to_free; int * tmpp; int pagelen; int pagelist; scalar_t__ end; scalar_t__* p; } ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {scalar_t__ iov_len; scalar_t__ iov_base; } ;


 scalar_t__ nfsd4_decode_compound (struct nfsd4_compoundargs*) ;
 int nfsd4_release_compoundargs (struct nfsd4_compoundargs*) ;

int
nfs4svc_decode_compoundargs(struct svc_rqst *rqstp, __be32 *p, struct nfsd4_compoundargs *args)
{
 __be32 status;

 args->p = p;
 args->end = rqstp->rq_arg.head[0].iov_base + rqstp->rq_arg.head[0].iov_len;
 args->pagelist = rqstp->rq_arg.pages;
 args->pagelen = rqstp->rq_arg.page_len;
 args->tmpp = ((void*)0);
 args->to_free = ((void*)0);
 args->ops = args->iops;
 args->rqstp = rqstp;

 status = nfsd4_decode_compound(args);
 if (status) {
  nfsd4_release_compoundargs(args);
 }
 return !status;
}
