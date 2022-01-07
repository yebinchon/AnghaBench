
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {scalar_t__ escape_mask; } ;


 scalar_t__ NO_ESCAPE ;
 scalar_t__ find_first_artificial_name (int ) ;
 int get_otype (int ,int) ;
 int get_ssa_base (int ) ;
 int nonstandard_alias_types_p (int ,int ) ;
 scalar_t__ struct_class_union_p (int ) ;
 scalar_t__ struct_field_tag_p (int ) ;
 TYPE_1__* var_ann (int ) ;

__attribute__((used)) static bool
nonstandard_alias_p (tree ptr, tree alias, bool ptr_ptr)
{

  tree ptr_type = get_otype (ptr, 1);
  tree alias_type = get_otype (alias, ptr_ptr);




  if (var_ann (get_ssa_base (alias))->escape_mask != NO_ESCAPE)
      return 0;



  if (struct_class_union_p (ptr_type) || struct_class_union_p (alias_type))
    return 0;




  if (struct_field_tag_p (alias))
     return 0;



  if (find_first_artificial_name (ptr) && find_first_artificial_name (alias))
    return 0;


  return nonstandard_alias_types_p (ptr_type, alias_type);
}
