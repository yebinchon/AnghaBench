
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int TYPE_MAX_VALUE (int ) ;
 int VR_RANGE ;
 int build_int_cst (int ,int ) ;
 int positive_overflow_infinity (int ) ;
 int set_value_range (TYPE_1__*,int ,int ,int ,int ) ;
 int set_value_range_to_varying (TYPE_1__*) ;
 int supports_overflow_infinity (int ) ;

__attribute__((used)) static inline void
set_value_range_to_nonnegative (value_range_t *vr, tree type,
    bool overflow_infinity)
{
  tree zero;

  if (overflow_infinity && !supports_overflow_infinity (type))
    {
      set_value_range_to_varying (vr);
      return;
    }

  zero = build_int_cst (type, 0);
  set_value_range (vr, VR_RANGE, zero,
     (overflow_infinity
      ? positive_overflow_infinity (type)
      : TYPE_MAX_VALUE (type)),
     vr->equiv);
}
