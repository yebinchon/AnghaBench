
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct svc_rqst {scalar_t__ rq_xid; scalar_t__ rq_proc; scalar_t__ rq_prot; scalar_t__ rq_vers; TYPE_1__ rq_arg; } ;
struct svc_cacherep {scalar_t__ c_xid; scalar_t__ c_proc; scalar_t__ c_prot; scalar_t__ c_vers; scalar_t__ c_len; scalar_t__ c_csum; int c_addr; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ __wsum ;


 int payload_misses ;
 int rpc_cmp_addr (struct sockaddr*,struct sockaddr*) ;
 scalar_t__ rpc_get_port (struct sockaddr*) ;
 struct sockaddr* svc_addr (struct svc_rqst*) ;

__attribute__((used)) static bool
nfsd_cache_match(struct svc_rqst *rqstp, __wsum csum, struct svc_cacherep *rp)
{

 if (rqstp->rq_xid != rp->c_xid || rqstp->rq_proc != rp->c_proc ||
     rqstp->rq_prot != rp->c_prot || rqstp->rq_vers != rp->c_vers ||
     rqstp->rq_arg.len != rp->c_len ||
     !rpc_cmp_addr(svc_addr(rqstp), (struct sockaddr *)&rp->c_addr) ||
     rpc_get_port(svc_addr(rqstp)) != rpc_get_port((struct sockaddr *)&rp->c_addr))
  return 0;


 if (csum != rp->c_csum) {
  ++payload_misses;
  return 0;
 }

 return 1;
}
