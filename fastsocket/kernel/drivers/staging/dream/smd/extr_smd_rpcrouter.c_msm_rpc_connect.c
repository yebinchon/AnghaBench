
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rr_server {int cid; int pid; } ;
struct msm_rpc_endpoint {unsigned int flags; void* dst_vers; void* dst_prog; int dst_cid; int dst_pid; } ;


 int D (char*,int,int,int) ;
 int EHOSTUNREACH ;
 struct msm_rpc_endpoint* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct msm_rpc_endpoint*) ;
 int RPC_VERSION_MODE_MASK ;
 void* cpu_to_be32 (int) ;
 scalar_t__ msm_rpc_get_compatible_server (int,int,int*) ;
 struct msm_rpc_endpoint* msm_rpc_open () ;
 struct rr_server* rpcrouter_lookup_server (int,int) ;

struct msm_rpc_endpoint *msm_rpc_connect(uint32_t prog, uint32_t vers, unsigned flags)
{
 struct msm_rpc_endpoint *ept;
 struct rr_server *server;
 server = rpcrouter_lookup_server(prog, vers);
 if (!server)
  return ERR_PTR(-EHOSTUNREACH);

 ept = msm_rpc_open();
 if (IS_ERR(ept))
  return ept;

 ept->flags = flags;
 ept->dst_pid = server->pid;
 ept->dst_cid = server->cid;
 ept->dst_prog = cpu_to_be32(prog);
 ept->dst_vers = cpu_to_be32(vers);

 return ept;
}
