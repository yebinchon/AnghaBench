
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int VR_ANTI_RANGE ;
 int build_int_cst (int ,int ) ;
 int set_value_range (TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
set_value_range_to_nonnull (value_range_t *vr, tree type)
{
  tree zero = build_int_cst (type, 0);
  set_value_range (vr, VR_ANTI_RANGE, zero, zero, vr->equiv);
}
