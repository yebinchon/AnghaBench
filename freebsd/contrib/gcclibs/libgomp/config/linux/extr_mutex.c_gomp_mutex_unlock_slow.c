
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gomp_mutex_t ;


 int futex_wake (int *,int) ;

void
gomp_mutex_unlock_slow (gomp_mutex_t *mutex)
{
  futex_wake (mutex, 1);
}
