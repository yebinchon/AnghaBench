
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct gomp_team* team; } ;
struct gomp_team {int nthreads; TYPE_2__ prev_ts; } ;
struct TYPE_4__ {struct gomp_team* team; } ;
struct TYPE_6__ {TYPE_1__ ts; } ;


 TYPE_3__* gomp_thread () ;

int omp_in_parallel (void)
{
  struct gomp_team *team = gomp_thread ()->ts.team;

  while (team)
    {
      if (team->nthreads > 1)
 return 1;
      team = team->prev_ts.team;
    }

  return 0;
}
