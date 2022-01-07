
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;


 int __rpc_init_priority_wait_queue (struct rpc_wait_queue*,char const*,int) ;

void rpc_init_wait_queue(struct rpc_wait_queue *queue, const char *qname)
{
 __rpc_init_priority_wait_queue(queue, qname, 1);
}
