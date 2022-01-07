
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gomp_work_share {unsigned int ordered_cur; unsigned int ordered_num_used; size_t* ordered_team_ids; } ;
struct TYPE_2__ {size_t team_id; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int nthreads; int * ordered_release; } ;


 int gomp_sem_post (int ) ;
 struct gomp_thread* gomp_thread () ;

void
gomp_ordered_first (void)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;
  unsigned index;


  if (team == ((void*)0) || team->nthreads == 1)
    return;

  index = ws->ordered_cur + ws->ordered_num_used;
  if (index >= team->nthreads)
    index -= team->nthreads;
  ws->ordered_team_ids[index] = thr->ts.team_id;




  if (ws->ordered_num_used++ == 0)
    gomp_sem_post (team->ordered_release[thr->ts.team_id]);
}
