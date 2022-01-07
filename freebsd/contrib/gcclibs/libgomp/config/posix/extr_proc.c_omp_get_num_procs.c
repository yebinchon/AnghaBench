
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_NPROCESSORS_ONLN ;
 int gomp_nthreads_var ;
 int sysconf (int ) ;

int
omp_get_num_procs (void)
{



  return gomp_nthreads_var;

}
