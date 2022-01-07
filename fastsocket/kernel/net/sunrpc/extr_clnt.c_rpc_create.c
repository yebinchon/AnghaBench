
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xprt_create {int bc_xprt; int addrlen; TYPE_1__* dstaddr; int srcaddr; int ident; int net; } ;
struct sockaddr_un {char* sun_path; } ;
struct sockaddr_in6 {char sin6_addr; } ;
struct TYPE_4__ {char s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct rpc_xprt {int resvport; int cl_softrtry; int cl_autobind; int cl_discrtry; int cl_chatty; } ;
struct rpc_create_args {char* servername; int flags; TYPE_1__* address; int bc_xprt; int addrsize; int saddress; int protocol; int net; } ;
struct rpc_clnt {int resvport; int cl_softrtry; int cl_autobind; int cl_discrtry; int cl_chatty; } ;
typedef int servername ;
struct TYPE_3__ {int sa_family; } ;





 int EINVAL ;
 struct rpc_xprt* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct rpc_xprt*) ;
 int RPC_CLNT_CREATE_AUTOBIND ;
 int RPC_CLNT_CREATE_DISCRTRY ;
 int RPC_CLNT_CREATE_HARDRTRY ;
 int RPC_CLNT_CREATE_NONPRIVPORT ;
 int RPC_CLNT_CREATE_NOPING ;
 int RPC_CLNT_CREATE_QUIET ;
 struct rpc_xprt* rpc_new_client (struct rpc_create_args*,struct rpc_xprt*) ;
 int rpc_ping (struct rpc_xprt*) ;
 int rpc_shutdown_client (struct rpc_xprt*) ;
 int snprintf (char*,int,char*,char*) ;
 struct rpc_xprt* xprt_create_transport (struct xprt_create*) ;

struct rpc_clnt *rpc_create(struct rpc_create_args *args)
{
 struct rpc_xprt *xprt;
 struct rpc_clnt *clnt;
 struct xprt_create xprtargs = {
  .net = args->net,
  .ident = args->protocol,
  .srcaddr = args->saddress,
  .dstaddr = args->address,
  .addrlen = args->addrsize,
  .bc_xprt = args->bc_xprt,
 };
 char servername[48];





 if (args->servername == ((void*)0)) {
  struct sockaddr_un *sun =
    (struct sockaddr_un *)args->address;
  struct sockaddr_in *sin =
    (struct sockaddr_in *)args->address;
  struct sockaddr_in6 *sin6 =
    (struct sockaddr_in6 *)args->address;

  servername[0] = '\0';
  switch (args->address->sa_family) {
  case 128:
   snprintf(servername, sizeof(servername), "%s",
     sun->sun_path);
   break;
  case 130:
   snprintf(servername, sizeof(servername), "%pI4",
     &sin->sin_addr.s_addr);
   break;
  case 129:
   snprintf(servername, sizeof(servername), "%pI6",
     &sin6->sin6_addr);
   break;
  default:


   return ERR_PTR(-EINVAL);
  }
  args->servername = servername;
 }

 xprt = xprt_create_transport(&xprtargs);
 if (IS_ERR(xprt))
  return (struct rpc_clnt *)xprt;







 xprt->resvport = 1;
 if (args->flags & RPC_CLNT_CREATE_NONPRIVPORT)
  xprt->resvport = 0;

 clnt = rpc_new_client(args, xprt);
 if (IS_ERR(clnt))
  return clnt;

 if (!(args->flags & RPC_CLNT_CREATE_NOPING)) {
  int err = rpc_ping(clnt);
  if (err != 0) {
   rpc_shutdown_client(clnt);
   return ERR_PTR(err);
  }
 }

 clnt->cl_softrtry = 1;
 if (args->flags & RPC_CLNT_CREATE_HARDRTRY)
  clnt->cl_softrtry = 0;

 if (args->flags & RPC_CLNT_CREATE_AUTOBIND)
  clnt->cl_autobind = 1;
 if (args->flags & RPC_CLNT_CREATE_DISCRTRY)
  clnt->cl_discrtry = 1;
 if (!(args->flags & RPC_CLNT_CREATE_QUIET))
  clnt->cl_chatty = 1;

 return clnt;
}
