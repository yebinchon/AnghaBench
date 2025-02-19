
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* work_share; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct TYPE_3__ {int lock; } ;


 int gomp_iter_guided_next_locked (long*,long*) ;
 int gomp_mutex_lock (int *) ;
 int gomp_mutex_unlock (int *) ;
 int gomp_ordered_last () ;
 int gomp_ordered_next () ;
 int gomp_ordered_sync () ;
 struct gomp_thread* gomp_thread () ;

__attribute__((used)) static bool
gomp_loop_ordered_guided_next (long *istart, long *iend)
{
  struct gomp_thread *thr = gomp_thread ();
  bool ret;

  gomp_ordered_sync ();
  gomp_mutex_lock (&thr->ts.work_share->lock);
  ret = gomp_iter_guided_next_locked (istart, iend);
  if (ret)
    gomp_ordered_next ();
  else
    gomp_ordered_last ();
  gomp_mutex_unlock (&thr->ts.work_share->lock);

  return ret;
}
