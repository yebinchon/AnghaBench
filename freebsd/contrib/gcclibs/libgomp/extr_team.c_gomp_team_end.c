
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {TYPE_1__ prev_ts; int barrier; } ;


 int free_team (struct gomp_team*) ;
 int gomp_barrier_wait (int *) ;
 struct gomp_thread* gomp_thread () ;

void
gomp_team_end (void)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;

  gomp_barrier_wait (&team->barrier);

  thr->ts = team->prev_ts;

  free_team (team);
}
