
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* work_share; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct TYPE_4__ {int lock; } ;


 scalar_t__ gomp_iter_dynamic_next_locked (long*,long*) ;
 int gomp_mutex_unlock (int *) ;
 int gomp_sections_init (TYPE_2__*,unsigned int) ;
 struct gomp_thread* gomp_thread () ;
 scalar_t__ gomp_work_share_start (int) ;

unsigned
GOMP_sections_start (unsigned count)
{
  struct gomp_thread *thr = gomp_thread ();
  long s, e, ret;

  if (gomp_work_share_start (0))
    gomp_sections_init (thr->ts.work_share, count);

  if (gomp_iter_dynamic_next_locked (&s, &e))
    ret = s;
  else
    ret = 0;

  gomp_mutex_unlock (&thr->ts.work_share->lock);

  return ret;
}
