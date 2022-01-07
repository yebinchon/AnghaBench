
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_bandwidth {scalar_t__ rt_runtime; int rt_runtime_lock; int rt_period; int rt_period_timer; } ;


 scalar_t__ RUNTIME_INF ;
 scalar_t__ hrtimer_active (int *) ;
 int rt_bandwidth_enabled () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_bandwidth_timer (int *,int ) ;

__attribute__((used)) static void start_rt_bandwidth(struct rt_bandwidth *rt_b)
{
 if (!rt_bandwidth_enabled() || rt_b->rt_runtime == RUNTIME_INF)
  return;

 if (hrtimer_active(&rt_b->rt_period_timer))
  return;

 spin_lock(&rt_b->rt_runtime_lock);
 start_bandwidth_timer(&rt_b->rt_period_timer, rt_b->rt_period);
 spin_unlock(&rt_b->rt_runtime_lock);
}
