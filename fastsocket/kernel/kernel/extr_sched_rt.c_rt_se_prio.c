
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sched_rt_entity {int dummy; } ;
struct TYPE_3__ {int curr; } ;
struct rt_rq {TYPE_1__ highest_prio; } ;
struct TYPE_4__ {int prio; } ;


 struct rt_rq* group_rt_rq (struct sched_rt_entity*) ;
 TYPE_2__* rt_task_of (struct sched_rt_entity*) ;

__attribute__((used)) static inline int rt_se_prio(struct sched_rt_entity *rt_se)
{







 return rt_task_of(rt_se)->prio;
}
