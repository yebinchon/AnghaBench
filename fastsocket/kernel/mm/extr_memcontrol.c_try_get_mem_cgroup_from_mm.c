
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int owner; } ;
struct mem_cgroup {int css; } ;


 int css_tryget (int *) ;
 struct mem_cgroup* mem_cgroup_from_task (int ) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct mem_cgroup *try_get_mem_cgroup_from_mm(struct mm_struct *mm)
{
 struct mem_cgroup *mem = ((void*)0);

 if (!mm)
  return ((void*)0);





 rcu_read_lock();
 do {
  mem = mem_cgroup_from_task(rcu_dereference(mm->owner));
  if (unlikely(!mem))
   break;
 } while (!css_tryget(&mem->css));
 rcu_read_unlock();
 return mem;
}
