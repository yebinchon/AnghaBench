
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nthreads_var; } ;


 int get_num_procs () ;
 TYPE_1__* gomp_icv (int) ;

int
omp_get_num_procs (void)
{
  int ncpus = get_num_procs ();
  if (ncpus <= 0)
    ncpus = gomp_icv (0)->nthreads_var;
  return ncpus;
}
