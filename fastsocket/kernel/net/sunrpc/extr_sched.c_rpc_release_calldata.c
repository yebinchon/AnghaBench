
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_call_ops {int (* rpc_release ) (void*) ;} ;


 int stub1 (void*) ;

void rpc_release_calldata(const struct rpc_call_ops *ops, void *calldata)
{
 if (ops->rpc_release != ((void*)0))
  ops->rpc_release(calldata);
}
