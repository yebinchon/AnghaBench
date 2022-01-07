
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gomp_sem_t ;


 scalar_t__ sem_wait (int *) ;

void
gomp_sem_wait (gomp_sem_t *sem)
{


  while (sem_wait (sem) != 0)
    continue;
}
