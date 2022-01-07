
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int build_int_cst (int ,int ) ;
 int set_value_range_to_value (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void
set_value_range_to_null (value_range_t *vr, tree type)
{
  set_value_range_to_value (vr, build_int_cst (type, 0), vr->equiv);
}
