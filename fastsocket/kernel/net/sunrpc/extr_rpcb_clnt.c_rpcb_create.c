
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;
struct rpc_create_args {int protocol; size_t addrsize; char* servername; int flags; int authflavor; int version; int * program; struct sockaddr* address; int * net; } ;
struct rpc_clnt {int dummy; } ;




 int EAFNOSUPPORT ;
 struct rpc_clnt* ERR_PTR (int ) ;
 int RPCBIND_PORT ;
 int RPC_AUTH_UNIX ;
 int RPC_CLNT_CREATE_NONPRIVPORT ;
 int RPC_CLNT_CREATE_NOPING ;
 void* htons (int ) ;
 int init_net ;
 struct rpc_clnt* rpc_create (struct rpc_create_args*) ;
 int rpcb_program ;

__attribute__((used)) static struct rpc_clnt *rpcb_create(char *hostname, struct sockaddr *srvaddr,
        size_t salen, int proto, u32 version)
{
 struct rpc_create_args args = {
  .net = &init_net,
  .protocol = proto,
  .address = srvaddr,
  .addrsize = salen,
  .servername = hostname,
  .program = &rpcb_program,
  .version = version,
  .authflavor = RPC_AUTH_UNIX,
  .flags = (RPC_CLNT_CREATE_NOPING |
     RPC_CLNT_CREATE_NONPRIVPORT),
 };

 switch (srvaddr->sa_family) {
 case 129:
  ((struct sockaddr_in *)srvaddr)->sin_port = htons(RPCBIND_PORT);
  break;
 case 128:
  ((struct sockaddr_in6 *)srvaddr)->sin6_port = htons(RPCBIND_PORT);
  break;
 default:
  return ERR_PTR(-EAFNOSUPPORT);
 }

 return rpc_create(&args);
}
