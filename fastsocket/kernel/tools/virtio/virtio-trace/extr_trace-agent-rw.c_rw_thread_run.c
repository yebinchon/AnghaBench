
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_thread_info {int cpu_num; } ;
typedef int pthread_t ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int pr_err (char*,int ) ;
 int pthread_create (int *,int *,int ,struct rw_thread_info*) ;
 int rw_thread_main ;

pthread_t rw_thread_run(struct rw_thread_info *rw_ti)
{
 int ret;
 pthread_t rw_thread_per_cpu;

 ret = pthread_create(&rw_thread_per_cpu, ((void*)0), rw_thread_main, rw_ti);
 if (ret != 0) {
  pr_err("Could not create a rw thread(%d)\n", rw_ti->cpu_num);
  exit(EXIT_FAILURE);
 }

 return rw_thread_per_cpu;
}
