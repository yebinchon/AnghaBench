
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_resolve_num_threads (int ) ;

int
omp_get_max_threads (void)
{
  return gomp_resolve_num_threads (0);
}
