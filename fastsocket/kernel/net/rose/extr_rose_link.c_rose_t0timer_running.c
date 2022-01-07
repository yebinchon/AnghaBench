
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rose_neigh {int t0timer; } ;


 int timer_pending (int *) ;

__attribute__((used)) static int rose_t0timer_running(struct rose_neigh *neigh)
{
 return timer_pending(&neigh->t0timer);
}
