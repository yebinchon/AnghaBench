
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rpc_task {int dummy; } ;
typedef scalar_t__ rpc_authflavor_t ;
typedef int __be32 ;


 scalar_t__ RPC_AUTH_NULL ;
 scalar_t__ ntohl (int ) ;
 int printk (char*,scalar_t__) ;

__attribute__((used)) static __be32 *
nul_validate(struct rpc_task *task, __be32 *p)
{
 rpc_authflavor_t flavor;
 u32 size;

 flavor = ntohl(*p++);
 if (flavor != RPC_AUTH_NULL) {
  printk("RPC: bad verf flavor: %u\n", flavor);
  return ((void*)0);
 }

 size = ntohl(*p++);
 if (size != 0) {
  printk("RPC: bad verf size: %u\n", size);
  return ((void*)0);
 }

 return p;
}
