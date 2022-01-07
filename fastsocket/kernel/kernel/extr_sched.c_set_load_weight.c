
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int weight; int inv_weight; } ;
struct TYPE_4__ {TYPE_1__ load; } ;
struct task_struct {scalar_t__ policy; size_t static_prio; TYPE_2__ se; } ;


 size_t MAX_RT_PRIO ;
 scalar_t__ SCHED_IDLE ;
 int WEIGHT_IDLEPRIO ;
 int WMULT_IDLEPRIO ;
 int* prio_to_weight ;
 int* prio_to_wmult ;
 scalar_t__ task_has_rt_policy (struct task_struct*) ;

__attribute__((used)) static void set_load_weight(struct task_struct *p)
{
 if (task_has_rt_policy(p)) {
  p->se.load.weight = prio_to_weight[0] * 2;
  p->se.load.inv_weight = prio_to_wmult[0] >> 1;
  return;
 }




 if (p->policy == SCHED_IDLE) {
  p->se.load.weight = WEIGHT_IDLEPRIO;
  p->se.load.inv_weight = WMULT_IDLEPRIO;
  return;
 }

 p->se.load.weight = prio_to_weight[p->static_prio - MAX_RT_PRIO];
 p->se.load.inv_weight = prio_to_wmult[p->static_prio - MAX_RT_PRIO];
}
