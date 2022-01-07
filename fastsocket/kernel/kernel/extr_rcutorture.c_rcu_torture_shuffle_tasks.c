
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_setall (int ) ;
 scalar_t__ current ;
 scalar_t__* fakewriter_tasks ;
 int get_online_cpus () ;
 int nfakewriters ;
 int nrealreaders ;
 int num_online_cpus () ;
 int put_online_cpus () ;
 int rcu_idle_cpu ;
 scalar_t__* reader_tasks ;
 int set_cpus_allowed_ptr (scalar_t__,int ) ;
 int shuffle_tmp_mask ;
 scalar_t__ stats_task ;
 scalar_t__ writer_task ;

__attribute__((used)) static void rcu_torture_shuffle_tasks(void)
{
 int i;

 cpumask_setall(shuffle_tmp_mask);
 get_online_cpus();


 if (num_online_cpus() == 1) {
  put_online_cpus();
  return;
 }

 if (rcu_idle_cpu != -1)
  cpumask_clear_cpu(rcu_idle_cpu, shuffle_tmp_mask);

 set_cpus_allowed_ptr(current, shuffle_tmp_mask);

 if (reader_tasks) {
  for (i = 0; i < nrealreaders; i++)
   if (reader_tasks[i])
    set_cpus_allowed_ptr(reader_tasks[i],
           shuffle_tmp_mask);
 }

 if (fakewriter_tasks) {
  for (i = 0; i < nfakewriters; i++)
   if (fakewriter_tasks[i])
    set_cpus_allowed_ptr(fakewriter_tasks[i],
           shuffle_tmp_mask);
 }

 if (writer_task)
  set_cpus_allowed_ptr(writer_task, shuffle_tmp_mask);

 if (stats_task)
  set_cpus_allowed_ptr(stats_task, shuffle_tmp_mask);

 if (rcu_idle_cpu == -1)
  rcu_idle_cpu = num_online_cpus() - 1;
 else
  rcu_idle_cpu--;

 put_online_cpus();
}
