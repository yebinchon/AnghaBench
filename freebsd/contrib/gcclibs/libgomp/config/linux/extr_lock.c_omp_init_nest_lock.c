
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_nest_lock_t ;
typedef int lock ;


 int memset (int *,int ,int) ;

void
omp_init_nest_lock (omp_nest_lock_t *lock)
{
  memset (lock, 0, sizeof (lock));
}
