
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct rpc_create_args {int addrsize; char* servername; int flags; int authflavor; int version; int * program; struct sockaddr* address; int protocol; int * net; } ;
struct rpc_clnt {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int NSM_VERSION ;
 int RPC_AUTH_NULL ;
 int RPC_CLNT_CREATE_NOPING ;
 int XPRT_TRANSPORT_UDP ;
 int htonl (int ) ;
 int init_net ;
 int nsm_program ;
 struct rpc_clnt* rpc_create (struct rpc_create_args*) ;

__attribute__((used)) static struct rpc_clnt *nsm_create(void)
{
 struct sockaddr_in sin = {
  .sin_family = AF_INET,
  .sin_addr.s_addr = htonl(INADDR_LOOPBACK),
 };
 struct rpc_create_args args = {
  .net = &init_net,
  .protocol = XPRT_TRANSPORT_UDP,
  .address = (struct sockaddr *)&sin,
  .addrsize = sizeof(sin),
  .servername = "rpc.statd",
  .program = &nsm_program,
  .version = NSM_VERSION,
  .authflavor = RPC_AUTH_NULL,
  .flags = RPC_CLNT_CREATE_NOPING,
 };

 return rpc_create(&args);
}
