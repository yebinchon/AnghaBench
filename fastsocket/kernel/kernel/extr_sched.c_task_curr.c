
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 struct task_struct const* cpu_curr (int ) ;
 int task_cpu (struct task_struct const*) ;

inline int task_curr(const struct task_struct *p)
{
 return cpu_curr(task_cpu(p)) == p;
}
