
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int nthreads; int * ordered_release; } ;


 int gomp_sem_post (int ) ;
 struct gomp_thread* gomp_thread () ;

void
gomp_ordered_static_init (void)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;

  if (team == ((void*)0) || team->nthreads == 1)
    return;

  gomp_sem_post (team->ordered_release[0]);
}
