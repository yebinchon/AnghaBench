
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* work_share; TYPE_1__* team; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct TYPE_6__ {void* copyprivate; int lock; } ;
struct TYPE_4__ {int barrier; } ;


 int gomp_barrier_wait (int *) ;
 int gomp_mutex_unlock (int *) ;
 struct gomp_thread* gomp_thread () ;
 int gomp_work_share_end_nowait () ;
 int gomp_work_share_start (int) ;

void *
GOMP_single_copy_start (void)
{
  struct gomp_thread *thr = gomp_thread ();

  bool first;
  void *ret;

  first = gomp_work_share_start (0);
  gomp_mutex_unlock (&thr->ts.work_share->lock);

  if (first)
    ret = ((void*)0);
  else
    {
      gomp_barrier_wait (&thr->ts.team->barrier);

      ret = thr->ts.work_share->copyprivate;
      gomp_work_share_end_nowait ();
    }

  return ret;
}
