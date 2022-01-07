
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_num_procs () ;

int
omp_get_num_procs (void)
{
  return get_num_procs ();
}
