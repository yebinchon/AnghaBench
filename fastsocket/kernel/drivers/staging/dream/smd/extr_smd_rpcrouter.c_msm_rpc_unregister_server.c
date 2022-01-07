
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rr_server {int dummy; } ;
struct msm_rpc_endpoint {int dummy; } ;


 int ENOENT ;
 int rpcrouter_destroy_server (struct rr_server*) ;
 struct rr_server* rpcrouter_lookup_server (int ,int ) ;

int msm_rpc_unregister_server(struct msm_rpc_endpoint *ept,
         uint32_t prog, uint32_t vers)
{
 struct rr_server *server;
 server = rpcrouter_lookup_server(prog, vers);

 if (!server)
  return -ENOENT;
 rpcrouter_destroy_server(server);
 return 0;
}
