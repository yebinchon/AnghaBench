
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_waiters; } ;


 int plist_head_empty (int *) ;

__attribute__((used)) static inline int task_has_pi_waiters(struct task_struct *p)
{
 return !plist_head_empty(&p->pi_waiters);
}
