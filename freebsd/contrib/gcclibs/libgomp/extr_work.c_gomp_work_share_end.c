
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gomp_work_share {int dummy; } ;
struct TYPE_2__ {unsigned int work_share_generation; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {unsigned int generation_mask; int barrier; scalar_t__ num_live_gen; int oldest_live_gen; int ** work_shares; } ;


 int free_work_share (struct gomp_work_share*) ;
 int gomp_barrier_wait_end (int *,int) ;
 int gomp_barrier_wait_start (int *) ;
 struct gomp_thread* gomp_thread () ;

void
gomp_work_share_end (void)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;
  bool last;

  thr->ts.work_share = ((void*)0);


  if (team == ((void*)0))
    {
      free_work_share (ws);
      return;
    }

  last = gomp_barrier_wait_start (&team->barrier);

  if (last)
    {
      unsigned ws_index;

      ws_index = thr->ts.work_share_generation & team->generation_mask;
      team->work_shares[ws_index] = ((void*)0);
      team->oldest_live_gen++;
      team->num_live_gen = 0;

      free_work_share (ws);
    }

  gomp_barrier_wait_end (&team->barrier, last);
}
