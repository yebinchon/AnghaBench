
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
typedef int __be32 ;


 int RPC_AUTH_NULL ;
 void* htonl (int ) ;

__attribute__((used)) static __be32 *
nul_marshal(struct rpc_task *task, __be32 *p)
{
 *p++ = htonl(RPC_AUTH_NULL);
 *p++ = 0;
 *p++ = htonl(RPC_AUTH_NULL);
 *p++ = 0;

 return p;
}
