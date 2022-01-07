
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_is_offline (int) ;
 int per_cpu (int ,int) ;
 int printk_pending ;
 int printk_tick () ;
 scalar_t__ unlikely (int ) ;

int printk_needs_cpu(int cpu)
{
 if (unlikely(cpu_is_offline(cpu)))
  printk_tick();
 return per_cpu(printk_pending, cpu);
}
