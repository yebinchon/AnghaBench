
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct cpumask {int dummy; } ;


 struct cpumask const* cpu_populated_map ;
 struct cpumask const* cpu_singlethread_map ;
 scalar_t__ is_wq_single_threaded (struct workqueue_struct*) ;

__attribute__((used)) static const struct cpumask *wq_cpu_map(struct workqueue_struct *wq)
{
 return is_wq_single_threaded(wq)
  ? cpu_singlethread_map : cpu_populated_map;
}
