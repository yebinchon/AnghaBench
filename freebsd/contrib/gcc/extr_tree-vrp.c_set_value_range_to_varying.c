
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ equiv; int max; int min; int type; } ;
typedef TYPE_1__ value_range_t ;


 int NULL_TREE ;
 int VR_VARYING ;
 int bitmap_clear (scalar_t__) ;

__attribute__((used)) static inline void
set_value_range_to_varying (value_range_t *vr)
{
  vr->type = VR_VARYING;
  vr->min = vr->max = NULL_TREE;
  if (vr->equiv)
    bitmap_clear (vr->equiv);
}
