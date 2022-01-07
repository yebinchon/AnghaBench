
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_range_t ;
typedef int tree ;
typedef int bitmap ;


 int VR_RANGE ;
 int avoid_overflow_infinity (int ) ;
 int gcc_assert (int ) ;
 int is_gimple_min_invariant (int ) ;
 int set_value_range (int *,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
set_value_range_to_value (value_range_t *vr, tree val, bitmap equiv)
{
  gcc_assert (is_gimple_min_invariant (val));
  val = avoid_overflow_infinity (val);
  set_value_range (vr, VR_RANGE, val, val, equiv);
}
