
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* head; } ;
struct TYPE_6__ {TYPE_1__* head; } ;
struct svc_rqst {int rq_vers; scalar_t__ rq_proc; int rq_cachetype; int rq_resp; scalar_t__ rq_dropme; int rq_argp; TYPE_4__ rq_res; TYPE_2__ rq_arg; struct svc_procedure* rq_procinfo; } ;
struct svc_procedure {scalar_t__ (* pc_func ) (struct svc_rqst*,int ,int ) ;int (* pc_encode ) (struct svc_rqst*,scalar_t__*,int ) ;int (* pc_decode ) (struct svc_rqst*,scalar_t__*,int ) ;int pc_cachetype; } ;
typedef int (* kxdrproc_t ) (struct svc_rqst*,scalar_t__*,int ) ;
typedef scalar_t__ __be32 ;
struct TYPE_7__ {int iov_len; scalar_t__* iov_base; } ;
struct TYPE_5__ {scalar_t__ iov_base; } ;




 int RC_NOCACHE ;

 int dprintk (char*,...) ;
 scalar_t__ map_new_errors (int,scalar_t__) ;
 int nfsd_cache_lookup (struct svc_rqst*) ;
 int nfsd_cache_update (struct svc_rqst*,int ,scalar_t__*) ;
 scalar_t__ nfserr_dropit ;
 scalar_t__ rpc_garbage_args ;
 scalar_t__ rpc_system_err ;
 scalar_t__ stub1 (struct svc_rqst*,int ,int ) ;

int
nfsd_dispatch(struct svc_rqst *rqstp, __be32 *statp)
{
 struct svc_procedure *proc;
 kxdrproc_t xdr;
 __be32 nfserr;
 __be32 *nfserrp;

 dprintk("nfsd_dispatch: vers %d proc %d\n",
    rqstp->rq_vers, rqstp->rq_proc);
 proc = rqstp->rq_procinfo;





 rqstp->rq_cachetype = proc->pc_cachetype;

 xdr = proc->pc_decode;
 if (xdr && !xdr(rqstp, (__be32*)rqstp->rq_arg.head[0].iov_base,
   rqstp->rq_argp)) {
  dprintk("nfsd: failed to decode arguments!\n");
  *statp = rpc_garbage_args;
  return 1;
 }


 switch (nfsd_cache_lookup(rqstp)) {
 case 129:
  return 0;
 case 128:
  return 1;
 case 130:;

 }




 nfserrp = rqstp->rq_res.head[0].iov_base
  + rqstp->rq_res.head[0].iov_len;
 rqstp->rq_res.head[0].iov_len += sizeof(__be32);


 nfserr = proc->pc_func(rqstp, rqstp->rq_argp, rqstp->rq_resp);
 nfserr = map_new_errors(rqstp->rq_vers, nfserr);
 if (nfserr == nfserr_dropit || rqstp->rq_dropme) {
  dprintk("nfsd: Dropping request; may be revisited later\n");
  nfsd_cache_update(rqstp, RC_NOCACHE, ((void*)0));
  return 0;
 }

 if (rqstp->rq_proc != 0)
  *nfserrp++ = nfserr;




 if (!(nfserr && rqstp->rq_vers == 2)) {
  xdr = proc->pc_encode;
  if (xdr && !xdr(rqstp, nfserrp,
    rqstp->rq_resp)) {

   dprintk("nfsd: failed to encode result!\n");
   nfsd_cache_update(rqstp, RC_NOCACHE, ((void*)0));
   *statp = rpc_system_err;
   return 1;
  }
 }


 nfsd_cache_update(rqstp, rqstp->rq_cachetype, statp + 1);
 return 1;
}
