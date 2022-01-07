
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_state {TYPE_1__* node; } ;
struct TYPE_2__ {int pool; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int dst_recv ;
 int dst_thread_setup ;
 int thread_pool_schedule_private (int ,int ,int ,struct dst_state*,int ,TYPE_1__*) ;

int dst_state_schedule_receiver(struct dst_state *st)
{
 return thread_pool_schedule_private(st->node->pool, dst_thread_setup,
   dst_recv, st, MAX_SCHEDULE_TIMEOUT, st->node);
}
