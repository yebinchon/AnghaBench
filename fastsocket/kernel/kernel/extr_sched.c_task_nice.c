
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TASK_NICE (struct task_struct const*) ;

int task_nice(const struct task_struct *p)
{
 return TASK_NICE(p);
}
