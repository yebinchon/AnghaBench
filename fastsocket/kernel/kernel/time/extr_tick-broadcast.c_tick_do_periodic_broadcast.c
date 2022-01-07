
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int cpumask_and (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tick_broadcast_lock ;
 int tick_do_broadcast (int ) ;
 int tick_get_broadcast_mask () ;
 int tmpmask ;
 int to_cpumask (int ) ;

__attribute__((used)) static void tick_do_periodic_broadcast(void)
{
 spin_lock(&tick_broadcast_lock);

 cpumask_and(to_cpumask(tmpmask),
      cpu_online_mask, tick_get_broadcast_mask());
 tick_do_broadcast(to_cpumask(tmpmask));

 spin_unlock(&tick_broadcast_lock);
}
