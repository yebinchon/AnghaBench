
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int max; int min; } ;
typedef TYPE_1__ value_range_t ;


 int TREE_TYPE (int ) ;
 int TYPE_OVERFLOW_UNDEFINED (int ) ;
 scalar_t__ VR_RANGE ;
 int gcc_assert (int) ;
 scalar_t__ is_overflow_infinity (int ) ;

__attribute__((used)) static bool
usable_range_p (value_range_t *vr, bool *strict_overflow_p)
{
  gcc_assert (vr->type == VR_RANGE);
  if (is_overflow_infinity (vr->min))
    {
      *strict_overflow_p = 1;
      if (!TYPE_OVERFLOW_UNDEFINED (TREE_TYPE (vr->min)))
 return 0;
    }
  if (is_overflow_infinity (vr->max))
    {
      *strict_overflow_p = 1;
      if (!TYPE_OVERFLOW_UNDEFINED (TREE_TYPE (vr->max)))
 return 0;
    }
  return 1;
}
