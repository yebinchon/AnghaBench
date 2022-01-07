
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_nest_lock_arg_t ;


 int omp_nest_lock_arg (int ) ;
 int omp_set_nest_lock (int ) ;

void
omp_set_nest_lock_ (omp_nest_lock_arg_t lock)
{
  omp_set_nest_lock (omp_nest_lock_arg (lock));
}
