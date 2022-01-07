
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nthreads_var; } ;


 unsigned int get_num_procs () ;
 int getloadavg (double*,int) ;
 TYPE_1__* gomp_icv (int) ;

unsigned
gomp_dynamic_max_threads (void)
{
  unsigned n_onln, loadavg;
  unsigned nthreads_var = gomp_icv (0)->nthreads_var;

  n_onln = get_num_procs ();
  if (!n_onln || n_onln > nthreads_var)
    n_onln = nthreads_var;

  loadavg = 0;
  if (loadavg >= n_onln)
    return 1;
  else
    return n_onln - loadavg;
}
