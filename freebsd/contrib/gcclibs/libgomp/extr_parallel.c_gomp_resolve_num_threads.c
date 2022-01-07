
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ team; } ;
struct TYPE_4__ {TYPE_1__ ts; } ;


 scalar_t__ gomp_dyn_var ;
 unsigned int gomp_dynamic_max_threads () ;
 int gomp_nest_var ;
 unsigned int gomp_nthreads_var ;
 TYPE_2__* gomp_thread () ;

unsigned
gomp_resolve_num_threads (unsigned specified)
{

  if (specified == 1)
    return 1;



  if (gomp_thread()->ts.team && !gomp_nest_var)
    return 1;


  if (specified == 0)
    specified = gomp_nthreads_var;



  if (gomp_dyn_var)
    {
      unsigned dyn = gomp_dynamic_max_threads ();
      if (dyn < specified)
 return dyn;
    }

  return specified;
}
