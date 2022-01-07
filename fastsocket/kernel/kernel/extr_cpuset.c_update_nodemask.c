
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_heap {int dummy; } ;
struct cpuset {int mems_allowed; } ;
typedef int nodemask_t ;


 int EACCES ;
 int EINVAL ;
 int GFP_KERNEL ;
 size_t N_HIGH_MEMORY ;
 int PAGE_SIZE ;
 int callback_mutex ;
 int heap_free (struct ptr_heap*) ;
 int heap_init (struct ptr_heap*,int ,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * node_states ;
 int nodelist_parse (char const*,int ) ;
 int nodes_clear (int ) ;
 scalar_t__ nodes_equal (int ,int ) ;
 int nodes_subset (int ,int ) ;
 struct cpuset top_cpuset ;
 int update_tasks_nodemask (struct cpuset*,int *,struct ptr_heap*) ;
 int validate_change (struct cpuset*,struct cpuset*) ;

__attribute__((used)) static int update_nodemask(struct cpuset *cs, struct cpuset *trialcs,
      const char *buf)
{
 nodemask_t oldmem;
 int retval;
 struct ptr_heap heap;





 if (cs == &top_cpuset)
  return -EACCES;







 if (!*buf) {
  nodes_clear(trialcs->mems_allowed);
 } else {
  retval = nodelist_parse(buf, trialcs->mems_allowed);
  if (retval < 0)
   goto done;

  if (!nodes_subset(trialcs->mems_allowed,
    node_states[N_HIGH_MEMORY]))
   return -EINVAL;
 }
 oldmem = cs->mems_allowed;
 if (nodes_equal(oldmem, trialcs->mems_allowed)) {
  retval = 0;
  goto done;
 }
 retval = validate_change(cs, trialcs);
 if (retval < 0)
  goto done;

 retval = heap_init(&heap, PAGE_SIZE, GFP_KERNEL, ((void*)0));
 if (retval < 0)
  goto done;

 mutex_lock(&callback_mutex);
 cs->mems_allowed = trialcs->mems_allowed;
 mutex_unlock(&callback_mutex);

 update_tasks_nodemask(cs, &oldmem, &heap);

 heap_free(&heap);
done:
 return retval;
}
