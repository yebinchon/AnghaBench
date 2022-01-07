
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int ETIMEDOUT ;
 int xprt_adjust_cwnd (struct rpc_task*,int ) ;

__attribute__((used)) static void xs_udp_timer(struct rpc_task *task)
{
 xprt_adjust_cwnd(task, -ETIMEDOUT);
}
