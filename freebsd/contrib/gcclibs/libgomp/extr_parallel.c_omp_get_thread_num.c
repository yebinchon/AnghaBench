
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int team_id; } ;
struct TYPE_4__ {TYPE_1__ ts; } ;


 TYPE_2__* gomp_thread () ;

int
omp_get_thread_num (void)
{
  return gomp_thread ()->ts.team_id;
}
