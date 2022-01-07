
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned int cpu; } ;


 int set_task_rq (struct task_struct*,unsigned int) ;
 int smp_wmb () ;
 TYPE_1__* task_thread_info (struct task_struct*) ;

__attribute__((used)) static inline void __set_task_cpu(struct task_struct *p, unsigned int cpu)
{
 set_task_rq(p, cpu);
}
