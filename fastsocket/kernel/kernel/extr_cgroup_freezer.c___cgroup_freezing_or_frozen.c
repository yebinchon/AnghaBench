
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
typedef enum freezer_state { ____Placeholder_freezer_state } freezer_state ;
struct TYPE_2__ {int state; } ;


 int CGROUP_FREEZING ;
 int CGROUP_FROZEN ;
 TYPE_1__* task_freezer (struct task_struct*) ;

__attribute__((used)) static inline int __cgroup_freezing_or_frozen(struct task_struct *task)
{
 enum freezer_state state = task_freezer(task)->state;
 return (state == CGROUP_FREEZING) || (state == CGROUP_FROZEN);
}
