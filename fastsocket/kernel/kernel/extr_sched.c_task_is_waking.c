
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; } ;


 scalar_t__ TASK_WAKING ;
 int unlikely (int) ;

__attribute__((used)) static inline int task_is_waking(struct task_struct *p)
{
 return unlikely(p->state == TASK_WAKING);
}
