
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int max; int min; } ;
typedef TYPE_1__ value_range_t ;


 scalar_t__ VR_RANGE ;
 scalar_t__ is_overflow_infinity (int ) ;

__attribute__((used)) static inline bool
overflow_infinity_range_p (value_range_t *vr)
{
  return (vr->type == VR_RANGE
   && (is_overflow_infinity (vr->min)
       || is_overflow_infinity (vr->max)));
}
