
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int might_sleep () ;
 int synchronize_rcu () ;

void synchronize_net(void)
{
 might_sleep();
 synchronize_rcu();
}
