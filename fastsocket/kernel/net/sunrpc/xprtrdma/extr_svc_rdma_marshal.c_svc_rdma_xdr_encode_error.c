
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svcxprt_rdma {int sc_max_requests; } ;
struct rpcrdma_msg {int rm_xid; int rm_vers; } ;
typedef enum rpcrdma_errcode { ____Placeholder_rpcrdma_errcode } rpcrdma_errcode ;


 int ERR_VERS ;
 int RDMA_ERROR ;
 int RPCRDMA_VERSION ;
 void* htonl (int) ;

int svc_rdma_xdr_encode_error(struct svcxprt_rdma *xprt,
         struct rpcrdma_msg *rmsgp,
         enum rpcrdma_errcode err, u32 *va)
{
 u32 *startp = va;

 *va++ = htonl(rmsgp->rm_xid);
 *va++ = htonl(rmsgp->rm_vers);
 *va++ = htonl(xprt->sc_max_requests);
 *va++ = htonl(RDMA_ERROR);
 *va++ = htonl(err);
 if (err == ERR_VERS) {
  *va++ = htonl(RPCRDMA_VERSION);
  *va++ = htonl(RPCRDMA_VERSION);
 }

 return (int)((unsigned long)va - (unsigned long)startp);
}
