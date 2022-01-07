
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int * sched_class; } ;
struct sched_param {int sched_priority; } ;
struct TYPE_2__ {struct task_struct* stop; } ;


 int MAX_RT_PRIO ;
 int SCHED_FIFO ;
 TYPE_1__* cpu_rq (int) ;
 int rt_sched_class ;
 int sched_setscheduler_nocheck (struct task_struct*,int ,struct sched_param*) ;
 int stop_sched_class ;

void sched_set_stop_task(int cpu, struct task_struct *stop)
{
 struct sched_param param = { .sched_priority = MAX_RT_PRIO - 1 };
 struct task_struct *old_stop = cpu_rq(cpu)->stop;

 if (stop) {
  sched_setscheduler_nocheck(stop, SCHED_FIFO, &param);

  stop->sched_class = &stop_sched_class;
 }

 cpu_rq(cpu)->stop = stop;

 if (old_stop) {




  old_stop->sched_class = &rt_sched_class;
 }
}
