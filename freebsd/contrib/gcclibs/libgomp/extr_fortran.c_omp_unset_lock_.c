
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_lock_arg_t ;


 int omp_lock_arg (int ) ;
 int omp_unset_lock (int ) ;

void
omp_unset_lock_ (omp_lock_arg_t lock)
{
  omp_unset_lock (omp_lock_arg (lock));
}
