
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
struct cpu_stop_done {int ret; scalar_t__ executed; int completion; } ;
typedef int cpu_stop_fn_t ;


 int ENOENT ;
 int cpu_stop_init_done (struct cpu_stop_done*,int ) ;
 int cpumask_weight (struct cpumask const*) ;
 int queue_stop_cpus_work (struct cpumask const*,int ,void*,struct cpu_stop_done*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int __stop_cpus(const struct cpumask *cpumask,
         cpu_stop_fn_t fn, void *arg)
{
 struct cpu_stop_done done;

 cpu_stop_init_done(&done, cpumask_weight(cpumask));
 queue_stop_cpus_work(cpumask, fn, arg, &done);
 wait_for_completion(&done.completion);
 return done.executed ? done.ret : -ENOENT;
}
