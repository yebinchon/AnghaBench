
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_dyn_var ;

int
omp_get_dynamic (void)
{
  return gomp_dyn_var;
}
