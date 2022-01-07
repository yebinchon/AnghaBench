
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gomp_work_share {int ordered_owner; int ordered_num_used; unsigned int ordered_cur; unsigned int* ordered_team_ids; } ;
struct TYPE_2__ {size_t team_id; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int nthreads; int * ordered_release; } ;


 int gomp_sem_post (int ) ;
 struct gomp_thread* gomp_thread () ;

void
gomp_ordered_next (void)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;
  unsigned index, next_id;


  if (team == ((void*)0) || team->nthreads == 1)
    return;


  ws->ordered_owner = -1;


  if (ws->ordered_num_used == 1)
    {


      gomp_sem_post (team->ordered_release[thr->ts.team_id]);
      return;
    }




  if (ws->ordered_num_used < team->nthreads)
    {
      index = ws->ordered_cur + ws->ordered_num_used;
      if (index >= team->nthreads)
 index -= team->nthreads;
      ws->ordered_team_ids[index] = thr->ts.team_id;
    }

  index = ws->ordered_cur + 1;
  if (index == team->nthreads)
    index = 0;
  ws->ordered_cur = index;

  next_id = ws->ordered_team_ids[index];
  gomp_sem_post (team->ordered_release[next_id]);
}
