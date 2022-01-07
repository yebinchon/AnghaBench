
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 int NULL_TREE ;
 int TYPEID_EXPR ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ build_indirect_ref (int ,int *) ;
 scalar_t__ build_min (int ,int ,scalar_t__) ;
 scalar_t__ complete_type_or_else (scalar_t__,int ) ;
 int const_type_info_type_node ;
 scalar_t__ error_mark_node ;
 int get_tinfo_ptr (scalar_t__) ;
 scalar_t__ non_reference (scalar_t__) ;
 scalar_t__ processing_template_decl ;
 int typeid_ok_p () ;

tree
get_typeid (tree type)
{
  if (type == error_mark_node || !typeid_ok_p ())
    return error_mark_node;

  if (processing_template_decl)
    return build_min (TYPEID_EXPR, const_type_info_type_node, type);




  type = non_reference (type);



  type = TYPE_MAIN_VARIANT (type);

  if (CLASS_TYPE_P (type))
    type = complete_type_or_else (type, NULL_TREE);

  if (!type)
    return error_mark_node;

  return build_indirect_ref (get_tinfo_ptr (type), ((void*)0));
}
