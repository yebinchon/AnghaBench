
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASS_TYPE_P (int ) ;
 int NULL_TREE ;
 int TARGET_VTABLE_DATA_ENTRY_DISTANCE ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ TYPE_POLYMORPHIC_P (int ) ;
 int build_indirect_ref (int ,int *) ;
 int build_int_cst (int ,int) ;
 int build_vtbl_ref (int ,int ) ;
 int complete_type_or_else (int ,int ) ;
 int convert (int ,int ) ;
 int error_mark_node ;
 scalar_t__ error_operand_p (int ) ;
 int get_tinfo_ptr (int ) ;
 int non_reference (int ) ;
 int resolves_to_fixed_type_p (int ,int ) ;
 int type_info_ptr_type ;

__attribute__((used)) static tree
get_tinfo_decl_dynamic (tree exp)
{
  tree type;
  tree t;

  if (error_operand_p (exp))
    return error_mark_node;


  type = non_reference (TREE_TYPE (exp));


  type = TYPE_MAIN_VARIANT (type);

  if (CLASS_TYPE_P (type))
    type = complete_type_or_else (type, exp);

  if (!type)
    return error_mark_node;


  if (TYPE_POLYMORPHIC_P (type) && ! resolves_to_fixed_type_p (exp, 0))
    {

      tree index;


      index = build_int_cst (NULL_TREE,
        -1 * TARGET_VTABLE_DATA_ENTRY_DISTANCE);
      t = build_vtbl_ref (exp, index);
      t = convert (type_info_ptr_type, t);
    }
  else

    t = get_tinfo_ptr (TYPE_MAIN_VARIANT (type));

  return build_indirect_ref (t, ((void*)0));
}
