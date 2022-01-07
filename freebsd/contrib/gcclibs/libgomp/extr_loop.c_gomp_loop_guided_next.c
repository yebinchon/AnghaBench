
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* work_share; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct TYPE_3__ {int lock; } ;


 int gomp_iter_guided_next (long*,long*) ;
 int gomp_iter_guided_next_locked (long*,long*) ;
 int gomp_mutex_lock (int *) ;
 int gomp_mutex_unlock (int *) ;
 struct gomp_thread* gomp_thread () ;

__attribute__((used)) static bool
gomp_loop_guided_next (long *istart, long *iend)
{
  bool ret;




  struct gomp_thread *thr = gomp_thread ();
  gomp_mutex_lock (&thr->ts.work_share->lock);
  ret = gomp_iter_guided_next_locked (istart, iend);
  gomp_mutex_unlock (&thr->ts.work_share->lock);


  return ret;
}
