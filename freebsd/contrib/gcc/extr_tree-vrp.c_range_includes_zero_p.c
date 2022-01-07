
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int min; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int TREE_TYPE (int ) ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 int build_int_cst (int ,int ) ;
 int gcc_assert (int) ;
 int symbolic_range_p (TYPE_1__*) ;
 int value_inside_range (int ,TYPE_1__*) ;

__attribute__((used)) static inline bool
range_includes_zero_p (value_range_t *vr)
{
  tree zero;

  gcc_assert (vr->type != VR_UNDEFINED
              && vr->type != VR_VARYING
       && !symbolic_range_p (vr));

  zero = build_int_cst (TREE_TYPE (vr->min), 0);
  return (value_inside_range (zero, vr) == 1);
}
