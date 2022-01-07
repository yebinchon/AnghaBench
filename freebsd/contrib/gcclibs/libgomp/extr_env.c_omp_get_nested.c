
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_nest_var ;

int
omp_get_nested (void)
{
  return gomp_nest_var;
}
