
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rpc_xprt {size_t addrlen; int addr; } ;
struct rpc_clnt {struct rpc_xprt* cl_xprt; } ;


 int memcpy (struct sockaddr*,int *,size_t) ;

size_t rpc_peeraddr(struct rpc_clnt *clnt, struct sockaddr *buf, size_t bufsize)
{
 size_t bytes;
 struct rpc_xprt *xprt = clnt->cl_xprt;

 bytes = sizeof(xprt->addr);
 if (bytes > bufsize)
  bytes = bufsize;
 memcpy(buf, &clnt->cl_xprt->addr, bytes);
 return xprt->addrlen;
}
