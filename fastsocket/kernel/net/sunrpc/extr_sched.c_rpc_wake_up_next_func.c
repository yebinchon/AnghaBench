
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;



__attribute__((used)) static bool rpc_wake_up_next_func(struct rpc_task *task, void *data)
{
 return 1;
}
