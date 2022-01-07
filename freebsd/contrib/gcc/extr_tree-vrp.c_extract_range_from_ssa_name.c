
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int VR_RANGE ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 int add_equivalence (int ,int ) ;
 int copy_value_range (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* get_value_range (int ) ;
 int set_value_range (TYPE_1__*,int ,int ,int ,int *) ;

__attribute__((used)) static void
extract_range_from_ssa_name (value_range_t *vr, tree var)
{
  value_range_t *var_vr = get_value_range (var);

  if (var_vr->type != VR_UNDEFINED && var_vr->type != VR_VARYING)
    copy_value_range (vr, var_vr);
  else
    set_value_range (vr, VR_RANGE, var, var, ((void*)0));

  add_equivalence (vr->equiv, var);
}
