
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int static_prio; } ;



__attribute__((used)) static inline int __normal_prio(struct task_struct *p)
{
 return p->static_prio;
}
