
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int COND_EXPR ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPEID_EXPR ;
 scalar_t__ TYPE_POLYMORPHIC_P (scalar_t__) ;
 int boolean_type_node ;
 scalar_t__ build3 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_min (int ,int ,scalar_t__) ;
 int const_type_info_type_node ;
 scalar_t__ cp_convert (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ get_tinfo_decl_dynamic (scalar_t__) ;
 scalar_t__ processing_template_decl ;
 int resolves_to_fixed_type_p (scalar_t__,int*) ;
 scalar_t__ stabilize_reference (scalar_t__) ;
 scalar_t__ throw_bad_typeid () ;
 int typeid_ok_p () ;

tree
build_typeid (tree exp)
{
  tree cond = NULL_TREE;
  int nonnull = 0;

  if (exp == error_mark_node || !typeid_ok_p ())
    return error_mark_node;

  if (processing_template_decl)
    return build_min (TYPEID_EXPR, const_type_info_type_node, exp);

  if (TREE_CODE (exp) == INDIRECT_REF
      && TREE_CODE (TREE_TYPE (TREE_OPERAND (exp, 0))) == POINTER_TYPE
      && TYPE_POLYMORPHIC_P (TREE_TYPE (exp))
      && ! resolves_to_fixed_type_p (exp, &nonnull)
      && ! nonnull)
    {
      exp = stabilize_reference (exp);
      cond = cp_convert (boolean_type_node, TREE_OPERAND (exp, 0));
    }

  exp = get_tinfo_decl_dynamic (exp);

  if (exp == error_mark_node)
    return error_mark_node;

  if (cond)
    {
      tree bad = throw_bad_typeid ();

      exp = build3 (COND_EXPR, TREE_TYPE (exp), cond, exp, bad);
    }

  return exp;
}
