
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max; int min; } ;
typedef TYPE_1__ value_range_t ;


 int value_inside_range (int ,TYPE_1__*) ;

__attribute__((used)) static inline bool
value_ranges_intersect_p (value_range_t *vr0, value_range_t *vr1)
{
  return (value_inside_range (vr1->min, vr0) == 1
   || value_inside_range (vr1->max, vr0) == 1
   || value_inside_range (vr0->min, vr1) == 1
   || value_inside_range (vr0->max, vr1) == 1);
}
