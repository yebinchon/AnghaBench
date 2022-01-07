
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int TREE_TYPE (int ) ;
 int VR_RANGE ;
 int fold_convert (int ,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;
 int is_overflow_infinity (int ) ;
 int set_value_range (TYPE_1__*,int ,int ,int ,int ) ;
 int set_value_range_to_value (TYPE_1__*,int ,int ) ;
 int set_value_range_to_varying (TYPE_1__*) ;
 int vrp_evaluate_conditional_warnv (int ,int,int*) ;

__attribute__((used)) static void
extract_range_from_comparison (value_range_t *vr, tree expr)
{
  bool sop = 0;
  tree val = vrp_evaluate_conditional_warnv (expr, 0, &sop);






  if (val && !is_overflow_infinity (val) && !sop)
    {



      val = fold_convert (TREE_TYPE (expr), val);
      if (is_gimple_min_invariant (val))
 set_value_range_to_value (vr, val, vr->equiv);
      else
 set_value_range (vr, VR_RANGE, val, val, vr->equiv);
    }
  else
    set_value_range_to_varying (vr);
}
