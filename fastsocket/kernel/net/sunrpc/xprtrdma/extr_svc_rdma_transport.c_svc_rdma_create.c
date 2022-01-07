
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt {int dummy; } ;
struct svcxprt_rdma {struct svc_xprt sc_xprt; struct rdma_cm_id* sc_cm_id; } ;
struct svc_serv {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_3__ {int src_addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct rdma_cm_id {TYPE_2__ route; } ;
struct net {int dummy; } ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int ENOMEM ;
 struct svc_xprt* ERR_PTR (int) ;
 int IB_QPT_RC ;
 scalar_t__ IS_ERR (struct rdma_cm_id*) ;
 int PTR_ERR (struct rdma_cm_id*) ;
 int RDMA_PS_TCP ;
 int RPCRDMA_LISTEN_BACKLOG ;
 int dprintk (char*,...) ;
 int kfree (struct svcxprt_rdma*) ;
 int rdma_bind_addr (struct rdma_cm_id*,struct sockaddr*) ;
 struct rdma_cm_id* rdma_create_id (int ,struct svcxprt_rdma*,int ,int ) ;
 struct svcxprt_rdma* rdma_create_xprt (struct svc_serv*,int) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_listen (struct rdma_cm_id*,int ) ;
 int rdma_listen_handler ;
 int svc_xprt_set_local (struct svc_xprt*,struct sockaddr*,int) ;

__attribute__((used)) static struct svc_xprt *svc_rdma_create(struct svc_serv *serv,
     struct net *net,
     struct sockaddr *sa, int salen,
     int flags)
{
 struct rdma_cm_id *listen_id;
 struct svcxprt_rdma *cma_xprt;
 struct svc_xprt *xprt;
 int ret;

 dprintk("svcrdma: Creating RDMA socket\n");
 if (sa->sa_family != AF_INET) {
  dprintk("svcrdma: Address family %d is not supported.\n", sa->sa_family);
  return ERR_PTR(-EAFNOSUPPORT);
 }
 cma_xprt = rdma_create_xprt(serv, 1);
 if (!cma_xprt)
  return ERR_PTR(-ENOMEM);
 xprt = &cma_xprt->sc_xprt;

 listen_id = rdma_create_id(rdma_listen_handler, cma_xprt, RDMA_PS_TCP,
       IB_QPT_RC);
 if (IS_ERR(listen_id)) {
  ret = PTR_ERR(listen_id);
  dprintk("svcrdma: rdma_create_id failed = %d\n", ret);
  goto err0;
 }

 ret = rdma_bind_addr(listen_id, sa);
 if (ret) {
  dprintk("svcrdma: rdma_bind_addr failed = %d\n", ret);
  goto err1;
 }
 cma_xprt->sc_cm_id = listen_id;

 ret = rdma_listen(listen_id, RPCRDMA_LISTEN_BACKLOG);
 if (ret) {
  dprintk("svcrdma: rdma_listen failed = %d\n", ret);
  goto err1;
 }





 sa = (struct sockaddr *)&cma_xprt->sc_cm_id->route.addr.src_addr;
 svc_xprt_set_local(&cma_xprt->sc_xprt, sa, salen);

 return &cma_xprt->sc_xprt;

 err1:
 rdma_destroy_id(listen_id);
 err0:
 kfree(cma_xprt);
 return ERR_PTR(ret);
}
