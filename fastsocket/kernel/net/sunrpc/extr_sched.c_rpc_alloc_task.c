
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int GFP_NOFS ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int rpc_task_mempool ;

__attribute__((used)) static struct rpc_task *
rpc_alloc_task(void)
{
 return (struct rpc_task *)mempool_alloc(rpc_task_mempool, GFP_NOFS);
}
