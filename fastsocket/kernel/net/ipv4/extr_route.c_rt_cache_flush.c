
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int in_softirq () ;
 int rt_cache_invalidate (struct net*) ;
 int rt_do_flush (int) ;

void rt_cache_flush(struct net *net, int delay)
{
 rt_cache_invalidate(net);
 if (delay >= 0)
  rt_do_flush(!in_softirq());
}
