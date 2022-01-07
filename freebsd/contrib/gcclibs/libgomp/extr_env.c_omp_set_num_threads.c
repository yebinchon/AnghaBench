
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_nthreads_var ;

void
omp_set_num_threads (int n)
{
  gomp_nthreads_var = (n > 0 ? n : 1);
}
