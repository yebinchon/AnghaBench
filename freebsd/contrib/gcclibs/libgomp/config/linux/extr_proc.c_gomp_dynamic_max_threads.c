
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_num_procs () ;
 int getloadavg (double*,int) ;
 unsigned int gomp_nthreads_var ;

unsigned
gomp_dynamic_max_threads (void)
{
  unsigned n_onln, loadavg;

  n_onln = get_num_procs ();
  if (n_onln > gomp_nthreads_var)
    n_onln = gomp_nthreads_var;

  loadavg = 0;
  if (loadavg >= n_onln)
    return 1;
  else
    return n_onln - loadavg;
}
