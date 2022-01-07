
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_nest_var ;

void
omp_set_nested (int val)
{
  gomp_nest_var = val;
}
