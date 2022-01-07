
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gomp_team {int nthreads; } ;
struct TYPE_3__ {struct gomp_team* team; } ;
struct TYPE_4__ {TYPE_1__ ts; } ;


 TYPE_2__* gomp_thread () ;

int
omp_get_num_threads (void)
{
  struct gomp_team *team = gomp_thread ()->ts.team;
  return team ? team->nthreads : 1;
}
