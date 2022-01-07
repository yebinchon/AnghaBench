
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count_avail_process_cpus () ;

int
omp_get_num_procs (void)
{
  return count_avail_process_cpus ();
}
