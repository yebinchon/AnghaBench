
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rose_neigh {scalar_t__ dce_mode; } ;


 int rose_start_t0timer (struct rose_neigh*) ;
 int rose_transmit_restart_request (struct rose_neigh*) ;

__attribute__((used)) static void rose_t0timer_expiry(unsigned long param)
{
 struct rose_neigh *neigh = (struct rose_neigh *)param;

 rose_transmit_restart_request(neigh);

 neigh->dce_mode = 0;

 rose_start_t0timer(neigh);
}
