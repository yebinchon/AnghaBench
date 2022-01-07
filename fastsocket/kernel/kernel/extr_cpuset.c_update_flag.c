
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_heap {int dummy; } ;
struct cpuset {int cpus_allowed; int flags; } ;
typedef int cpuset_flagbits_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct cpuset* alloc_trial_cpuset (struct cpuset*) ;
 int async_rebuild_sched_domains () ;
 int callback_mutex ;
 int clear_bit (int ,int *) ;
 int cpumask_empty (int ) ;
 int free_trial_cpuset (struct cpuset*) ;
 int heap_free (struct ptr_heap*) ;
 int heap_init (struct ptr_heap*,int ,int ,int *) ;
 scalar_t__ is_sched_load_balance (struct cpuset*) ;
 scalar_t__ is_spread_page (struct cpuset*) ;
 scalar_t__ is_spread_slab (struct cpuset*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int update_tasks_flags (struct cpuset*,struct ptr_heap*) ;
 int validate_change (struct cpuset*,struct cpuset*) ;

__attribute__((used)) static int update_flag(cpuset_flagbits_t bit, struct cpuset *cs,
         int turning_on)
{
 struct cpuset *trialcs;
 int balance_flag_changed;
 int spread_flag_changed;
 struct ptr_heap heap;
 int err;

 trialcs = alloc_trial_cpuset(cs);
 if (!trialcs)
  return -ENOMEM;

 if (turning_on)
  set_bit(bit, &trialcs->flags);
 else
  clear_bit(bit, &trialcs->flags);

 err = validate_change(cs, trialcs);
 if (err < 0)
  goto out;

 err = heap_init(&heap, PAGE_SIZE, GFP_KERNEL, ((void*)0));
 if (err < 0)
  goto out;

 balance_flag_changed = (is_sched_load_balance(cs) !=
    is_sched_load_balance(trialcs));

 spread_flag_changed = ((is_spread_slab(cs) != is_spread_slab(trialcs))
   || (is_spread_page(cs) != is_spread_page(trialcs)));

 mutex_lock(&callback_mutex);
 cs->flags = trialcs->flags;
 mutex_unlock(&callback_mutex);

 if (!cpumask_empty(trialcs->cpus_allowed) && balance_flag_changed)
  async_rebuild_sched_domains();

 if (spread_flag_changed)
  update_tasks_flags(cs, &heap);
 heap_free(&heap);
out:
 free_trial_cpuset(trialcs);
 return err;
}
