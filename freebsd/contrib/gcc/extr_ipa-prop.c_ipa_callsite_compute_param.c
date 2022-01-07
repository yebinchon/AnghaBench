
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
struct cgraph_edge {int dummy; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ CONST_DECL ;
 int CONST_IPATYPE ;
 int CONST_IPATYPE_REF ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 int FORMAL_IPATYPE ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PARM_DECL ;
 scalar_t__ REAL_CST ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int UNKNOWN_IPATYPE ;
 int gcc_assert (int) ;
 scalar_t__ get_call_expr_in (int ) ;
 struct cgraph_node* ipa_callsite_caller (struct cgraph_edge*) ;
 scalar_t__ ipa_callsite_param_count (struct cgraph_edge*) ;
 int ipa_callsite_param_map_create (struct cgraph_edge*) ;
 int ipa_callsite_param_set_info_type (struct cgraph_edge*,int,scalar_t__) ;
 int ipa_callsite_param_set_info_type_formal (struct cgraph_edge*,int,int) ;
 int ipa_callsite_param_set_type (struct cgraph_edge*,int,int ) ;
 int ipa_callsite_tree (struct cgraph_edge*) ;
 scalar_t__ ipa_method_is_modified (struct cgraph_node*,int) ;
 int ipa_method_tree_map (struct cgraph_node*,scalar_t__) ;

void
ipa_callsite_compute_param (struct cgraph_edge *cs)
{
  tree call_tree;
  tree arg, cst_decl;
  int arg_num;
  int i;
  struct cgraph_node *mt;

  if (ipa_callsite_param_count (cs) == 0)
    return;
  ipa_callsite_param_map_create (cs);
  call_tree = get_call_expr_in (ipa_callsite_tree (cs));
  gcc_assert (TREE_CODE (call_tree) == CALL_EXPR);
  arg = TREE_OPERAND (call_tree, 1);
  arg_num = 0;

  for (; arg != NULL_TREE; arg = TREE_CHAIN (arg))
    {



      if (TREE_CODE (TREE_VALUE (arg)) == PARM_DECL)
 {
   mt = ipa_callsite_caller (cs);
   i = ipa_method_tree_map (mt, TREE_VALUE (arg));
   if (i < 0 || ipa_method_is_modified (mt, i))
     ipa_callsite_param_set_type (cs, arg_num, UNKNOWN_IPATYPE);
   else
     {
       ipa_callsite_param_set_type (cs, arg_num, FORMAL_IPATYPE);
       ipa_callsite_param_set_info_type_formal (cs, arg_num, i);
     }
 }



      else if (TREE_CODE (TREE_VALUE (arg)) == INTEGER_CST
        || TREE_CODE (TREE_VALUE (arg)) == REAL_CST)
 {
   ipa_callsite_param_set_type (cs, arg_num, CONST_IPATYPE);
   ipa_callsite_param_set_info_type (cs, arg_num,
         TREE_VALUE (arg));
 }




      else if (TREE_CODE (TREE_VALUE (arg)) == ADDR_EXPR
        && TREE_CODE (TREE_OPERAND (TREE_VALUE (arg), 0)) ==
        CONST_DECL)
 {
   cst_decl = TREE_OPERAND (TREE_VALUE (arg), 0);
   if (TREE_CODE (DECL_INITIAL (cst_decl)) == INTEGER_CST
       || TREE_CODE (DECL_INITIAL (cst_decl)) == REAL_CST)
     {
       ipa_callsite_param_set_type (cs, arg_num,
        CONST_IPATYPE_REF);
       ipa_callsite_param_set_info_type (cs, arg_num,
      DECL_INITIAL (cst_decl));
     }
 }
      else
 ipa_callsite_param_set_type (cs, arg_num, UNKNOWN_IPATYPE);
      arg_num++;
    }
}
