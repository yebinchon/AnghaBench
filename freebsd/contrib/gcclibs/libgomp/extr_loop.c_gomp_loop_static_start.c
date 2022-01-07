
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* work_share; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct TYPE_4__ {int lock; } ;


 int GFS_STATIC ;
 int gomp_iter_static_next (long*,long*) ;
 int gomp_loop_init (TYPE_2__*,long,long,long,int ,long) ;
 int gomp_mutex_unlock (int *) ;
 struct gomp_thread* gomp_thread () ;
 scalar_t__ gomp_work_share_start (int) ;

__attribute__((used)) static bool
gomp_loop_static_start (long start, long end, long incr, long chunk_size,
   long *istart, long *iend)
{
  struct gomp_thread *thr = gomp_thread ();

  if (gomp_work_share_start (0))
    gomp_loop_init (thr->ts.work_share, start, end, incr,
      GFS_STATIC, chunk_size);
  gomp_mutex_unlock (&thr->ts.work_share->lock);

  return !gomp_iter_static_next (istart, iend);
}
