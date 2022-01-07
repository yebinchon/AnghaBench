
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct svc_pool_map {unsigned int* pool_to; scalar_t__ count; int mode; } ;


 int BUG_ON (int) ;


 int cpumask_of (unsigned int) ;
 int cpumask_of_node (unsigned int) ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;
 struct svc_pool_map svc_pool_map ;

__attribute__((used)) static inline void
svc_pool_map_set_cpumask(struct task_struct *task, unsigned int pidx)
{
 struct svc_pool_map *m = &svc_pool_map;
 unsigned int node = m->pool_to[pidx];





 BUG_ON(m->count == 0);

 switch (m->mode) {
 case 129:
 {
  set_cpus_allowed_ptr(task, cpumask_of(node));
  break;
 }
 case 128:
 {
  set_cpus_allowed_ptr(task, cpumask_of_node(node));
  break;
 }
 }
}
