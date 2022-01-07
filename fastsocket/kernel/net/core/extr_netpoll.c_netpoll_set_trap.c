
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int trapped ;

void netpoll_set_trap(int trap)
{
 if (trap)
  atomic_inc(&trapped);
 else
  atomic_dec(&trapped);
}
