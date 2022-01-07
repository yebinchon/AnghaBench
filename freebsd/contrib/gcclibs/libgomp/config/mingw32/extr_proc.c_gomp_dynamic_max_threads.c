
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count_avail_process_cpus () ;
 int gomp_nthreads_var ;

unsigned
gomp_dynamic_max_threads (void)
{
  int n_onln = count_avail_process_cpus ();
  return n_onln > gomp_nthreads_var ? gomp_nthreads_var : n_onln;
}
