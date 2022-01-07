
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap ;


 int TV_DOM_FRONTIERS ;
 int compute_dominance_frontiers_1 (int *) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
compute_dominance_frontiers (bitmap *frontiers)
{
  timevar_push (TV_DOM_FRONTIERS);

  compute_dominance_frontiers_1 (frontiers);

  timevar_pop (TV_DOM_FRONTIERS);
}
