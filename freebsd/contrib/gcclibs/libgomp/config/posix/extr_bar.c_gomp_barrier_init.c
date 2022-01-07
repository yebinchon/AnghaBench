
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int total; scalar_t__ arrived; int sem2; int sem1; int mutex2; int mutex1; } ;
typedef TYPE_1__ gomp_barrier_t ;


 int gomp_mutex_init (int *) ;
 int gomp_sem_init (int *,int ) ;

void
gomp_barrier_init (gomp_barrier_t *bar, unsigned count)
{
  gomp_mutex_init (&bar->mutex1);

  gomp_mutex_init (&bar->mutex2);

  gomp_sem_init (&bar->sem1, 0);
  gomp_sem_init (&bar->sem2, 0);
  bar->total = count;
  bar->arrived = 0;
}
