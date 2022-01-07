
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* work_share; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ gomp_iter_dynamic_next_locked (long*,long*) ;
 int gomp_mutex_lock (int *) ;
 int gomp_mutex_unlock (int *) ;
 struct gomp_thread* gomp_thread () ;

unsigned
GOMP_sections_next (void)
{
  struct gomp_thread *thr = gomp_thread ();
  long s, e, ret;

  gomp_mutex_lock (&thr->ts.work_share->lock);
  if (gomp_iter_dynamic_next_locked (&s, &e))
    ret = s;
  else
    ret = 0;
  gomp_mutex_unlock (&thr->ts.work_share->lock);

  return ret;
}
