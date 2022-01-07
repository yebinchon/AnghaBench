
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct cpuset {int dummy; } ;


 int PF_SPREAD_PAGE ;
 int PF_SPREAD_SLAB ;
 scalar_t__ is_spread_page (struct cpuset*) ;
 scalar_t__ is_spread_slab (struct cpuset*) ;

__attribute__((used)) static void cpuset_update_task_spread_flag(struct cpuset *cs,
     struct task_struct *tsk)
{
 if (is_spread_page(cs))
  tsk->flags |= PF_SPREAD_PAGE;
 else
  tsk->flags &= ~PF_SPREAD_PAGE;
 if (is_spread_slab(cs))
  tsk->flags |= PF_SPREAD_SLAB;
 else
  tsk->flags &= ~PF_SPREAD_SLAB;
}
