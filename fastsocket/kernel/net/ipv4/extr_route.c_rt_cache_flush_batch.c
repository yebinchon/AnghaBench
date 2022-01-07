
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_softirq () ;
 int rt_do_flush (int) ;

void rt_cache_flush_batch(void)
{
 rt_do_flush(!in_softirq());
}
