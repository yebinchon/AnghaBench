
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int nodemask_t ;



__attribute__((used)) static bool has_intersects_mems_allowed(struct task_struct *tsk,
     const nodemask_t *mask)
{
 return 1;
}
