
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* work_share; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct TYPE_4__ {int lock; } ;


 int GFS_GUIDED ;
 int gomp_iter_guided_next_locked (long*,long*) ;
 int gomp_loop_init (TYPE_2__*,long,long,long,int ,long) ;
 int gomp_mutex_unlock (int *) ;
 int gomp_ordered_first () ;
 struct gomp_thread* gomp_thread () ;
 scalar_t__ gomp_work_share_start (int) ;

__attribute__((used)) static bool
gomp_loop_ordered_guided_start (long start, long end, long incr,
    long chunk_size, long *istart, long *iend)
{
  struct gomp_thread *thr = gomp_thread ();
  bool ret;

  if (gomp_work_share_start (1))
    gomp_loop_init (thr->ts.work_share, start, end, incr,
      GFS_GUIDED, chunk_size);

  ret = gomp_iter_guided_next_locked (istart, iend);
  if (ret)
    gomp_ordered_first ();
  gomp_mutex_unlock (&thr->ts.work_share->lock);

  return ret;
}
