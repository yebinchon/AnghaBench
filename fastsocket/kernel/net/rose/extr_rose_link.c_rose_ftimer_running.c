
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rose_neigh {int ftimer; } ;


 int timer_pending (int *) ;

int rose_ftimer_running(struct rose_neigh *neigh)
{
 return timer_pending(&neigh->ftimer);
}
