
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int trapped ;

int netpoll_trap(void)
{
 return atomic_read(&trapped);
}
