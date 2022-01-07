
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_heap {int dummy; } ;
struct cpuset {int cpus_allowed; } ;


 int EACCES ;
 int EINVAL ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int async_rebuild_sched_domains () ;
 int callback_mutex ;
 int cpu_active_mask ;
 int cpulist_parse (char const*,int ) ;
 int cpumask_clear (int ) ;
 int cpumask_copy (int ,int ) ;
 scalar_t__ cpumask_equal (int ,int ) ;
 int cpumask_subset (int ,int ) ;
 int heap_free (struct ptr_heap*) ;
 int heap_init (struct ptr_heap*,int ,int ,int *) ;
 int is_sched_load_balance (struct cpuset*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cpuset top_cpuset ;
 int update_tasks_cpumask (struct cpuset*,struct ptr_heap*) ;
 int validate_change (struct cpuset*,struct cpuset*) ;

__attribute__((used)) static int update_cpumask(struct cpuset *cs, struct cpuset *trialcs,
     const char *buf)
{
 struct ptr_heap heap;
 int retval;
 int is_load_balanced;


 if (cs == &top_cpuset)
  return -EACCES;







 if (!*buf) {
  cpumask_clear(trialcs->cpus_allowed);
 } else {
  retval = cpulist_parse(buf, trialcs->cpus_allowed);
  if (retval < 0)
   return retval;

  if (!cpumask_subset(trialcs->cpus_allowed, cpu_active_mask))
   return -EINVAL;
 }
 retval = validate_change(cs, trialcs);
 if (retval < 0)
  return retval;


 if (cpumask_equal(cs->cpus_allowed, trialcs->cpus_allowed))
  return 0;

 retval = heap_init(&heap, PAGE_SIZE, GFP_KERNEL, ((void*)0));
 if (retval)
  return retval;

 is_load_balanced = is_sched_load_balance(trialcs);

 mutex_lock(&callback_mutex);
 cpumask_copy(cs->cpus_allowed, trialcs->cpus_allowed);
 mutex_unlock(&callback_mutex);





 update_tasks_cpumask(cs, &heap);

 heap_free(&heap);

 if (is_load_balanced)
  async_rebuild_sched_domains();
 return 0;
}
