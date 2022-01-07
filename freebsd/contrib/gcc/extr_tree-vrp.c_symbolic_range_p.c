
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int min; } ;
typedef TYPE_1__ value_range_t ;


 int is_gimple_min_invariant (int ) ;

__attribute__((used)) static inline bool
symbolic_range_p (value_range_t *vr)
{
  return (!is_gimple_min_invariant (vr->min)
          || !is_gimple_min_invariant (vr->max));
}
