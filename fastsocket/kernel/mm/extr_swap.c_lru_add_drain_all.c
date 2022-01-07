
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lru_add_drain_per_cpu ;
 int schedule_on_each_cpu (int ) ;

int lru_add_drain_all(void)
{
 return schedule_on_each_cpu(lru_add_drain_per_cpu);
}
