
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count_avail_process_cpus () ;
 int gomp_nthreads_var ;

void
gomp_init_num_threads (void)
{
  gomp_nthreads_var = count_avail_process_cpus ();
}
