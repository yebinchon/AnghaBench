
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;
typedef struct mem_cgroup {int css; scalar_t__ use_hierarchy; } const mem_cgroup ;


 int css_is_ancestor (int *,int *) ;
 int css_put (int *) ;
 struct task_struct* find_lock_task_mm (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 struct mem_cgroup const* try_get_mem_cgroup_from_mm (int ) ;

int task_in_mem_cgroup(struct task_struct *task, const struct mem_cgroup *mem)
{
 int ret;
 struct mem_cgroup *curr = ((void*)0);
 struct task_struct *p;

 p = find_lock_task_mm(task);
 if (!p)
  return 0;
 curr = try_get_mem_cgroup_from_mm(p->mm);
 task_unlock(p);
 if (!curr)
  return 0;






 if (mem->use_hierarchy)
  ret = css_is_ancestor(&curr->css, &mem->css);
 else
  ret = (curr == mem);
 css_put(&curr->css);
 return ret;
}
