
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_nest_lock_arg_t ;
typedef int int32_t ;


 int omp_nest_lock_arg (int ) ;
 int omp_test_nest_lock (int ) ;

int32_t
omp_test_nest_lock_ (omp_nest_lock_arg_t lock)
{
  return omp_test_nest_lock (omp_nest_lock_arg (lock));
}
