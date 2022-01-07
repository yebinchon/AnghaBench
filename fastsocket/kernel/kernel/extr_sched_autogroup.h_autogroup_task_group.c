
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct task_group {int dummy; } ;



__attribute__((used)) static inline struct task_group *
autogroup_task_group(struct task_struct *p, struct task_group *tg)
{
 return tg;
}
