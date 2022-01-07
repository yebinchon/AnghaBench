
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nthreads_var; } ;


 int get_num_procs () ;
 TYPE_1__ gomp_global_icv ;

void
gomp_init_num_threads (void)
{
  int ncpus = get_num_procs ();

  if (ncpus > 0)
    gomp_global_icv.nthreads_var = ncpus;
}
