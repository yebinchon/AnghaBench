
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gomp_work_share {size_t ordered_owner; } ;
struct TYPE_2__ {size_t team_id; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int nthreads; int * ordered_release; } ;


 int gomp_sem_wait (int ) ;
 struct gomp_thread* gomp_thread () ;

void
gomp_ordered_sync (void)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;



  if (team == ((void*)0) || team->nthreads == 1)
    return;
  if (ws->ordered_owner != thr->ts.team_id)
    {
      gomp_sem_wait (team->ordered_release[thr->ts.team_id]);
      ws->ordered_owner = thr->ts.team_id;
    }
}
