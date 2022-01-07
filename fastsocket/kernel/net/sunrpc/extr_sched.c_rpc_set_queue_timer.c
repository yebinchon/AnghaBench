
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long expires; int timer; } ;
struct rpc_wait_queue {TYPE_1__ timer_list; } ;


 int mod_timer (int *,unsigned long) ;

__attribute__((used)) static void
rpc_set_queue_timer(struct rpc_wait_queue *queue, unsigned long expires)
{
 queue->timer_list.expires = expires;
 mod_timer(&queue->timer_list.timer, expires);
}
