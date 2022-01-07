
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {scalar_t__ cl_xprt; struct rpc_clnt* cl_parent; scalar_t__ cl_autobind; } ;



__attribute__((used)) static struct rpc_clnt *rpcb_find_transport_owner(struct rpc_clnt *clnt)
{
 struct rpc_clnt *parent = clnt->cl_parent;

 while (parent != clnt) {
  if (parent->cl_xprt != clnt->cl_xprt)
   break;
  if (clnt->cl_autobind)
   break;
  clnt = parent;
  parent = parent->cl_parent;
 }
 return clnt;
}
