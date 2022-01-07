
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BINFO_TYPE (scalar_t__) ;
 int COND_EXPR ;
 int LOOKUP_NONVIRTUAL ;
 int LOOKUP_NORMAL ;
 int NULL_TREE ;
 scalar_t__ TYPE_HAS_TRIVIAL_DESTRUCTOR (int ) ;
 int base_dtor_identifier ;
 scalar_t__ build_special_member_call (int ,int ,int ,scalar_t__,int) ;
 int c_common_truthvalue_conversion (scalar_t__) ;
 int current_class_ref ;
 int finish_eh_cleanup (scalar_t__) ;
 scalar_t__ fold_build3 (int ,int ,int ,scalar_t__,int ) ;
 int integer_zero_node ;
 int void_type_node ;

__attribute__((used)) static void
expand_cleanup_for_base (tree binfo, tree flag)
{
  tree expr;

  if (TYPE_HAS_TRIVIAL_DESTRUCTOR (BINFO_TYPE (binfo)))
    return;


  expr = build_special_member_call (current_class_ref,
        base_dtor_identifier,
        NULL_TREE,
        binfo,
        LOOKUP_NORMAL | LOOKUP_NONVIRTUAL);
  if (flag)
    expr = fold_build3 (COND_EXPR, void_type_node,
   c_common_truthvalue_conversion (flag),
   expr, integer_zero_node);

  finish_eh_cleanup (expr);
}
