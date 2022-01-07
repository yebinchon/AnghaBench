
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct rpc_wait_queue {TYPE_1__ timer_list; } ;


 int del_timer_sync (int *) ;

void rpc_destroy_wait_queue(struct rpc_wait_queue *queue)
{
 del_timer_sync(&queue->timer_list.timer);
}
