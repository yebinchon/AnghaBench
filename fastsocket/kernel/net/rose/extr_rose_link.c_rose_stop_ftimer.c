
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rose_neigh {int ftimer; } ;


 int del_timer (int *) ;

void rose_stop_ftimer(struct rose_neigh *neigh)
{
 del_timer(&neigh->ftimer);
}
