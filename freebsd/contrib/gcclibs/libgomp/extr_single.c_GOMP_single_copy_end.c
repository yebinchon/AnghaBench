
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_2__ ts; } ;
struct gomp_team {int barrier; } ;
struct TYPE_3__ {void* copyprivate; } ;


 int gomp_barrier_wait (int *) ;
 struct gomp_thread* gomp_thread () ;
 int gomp_work_share_end_nowait () ;

void
GOMP_single_copy_end (void *data)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;

  if (team != ((void*)0))
    {
      thr->ts.work_share->copyprivate = data;
      gomp_barrier_wait (&team->barrier);
    }

  gomp_work_share_end_nowait ();
}
