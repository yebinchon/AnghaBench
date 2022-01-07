
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int TREE_USED ;
typedef int TREE_THIS_VOLATILE ;
typedef int TREE_STATIC ;
typedef int TREE_PUBLIC ;
typedef int TREE_NOTHROW ;
typedef int DECL_VISIBILITY_SPECIFIED ;
typedef scalar_t__ DECL_VISIBILITY ;
typedef int DECL_IGNORED_P ;
typedef int DECL_EXTERNAL ;
typedef int DECL_ARTIFICIAL ;


 int FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ VISIBILITY_HIDDEN ;
 scalar_t__ build_decl (int ,int ,scalar_t__) ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_function_type_list (int ,scalar_t__) ;
 scalar_t__ default_external_stack_protect_fail () ;
 int flag_pic ;
 int get_identifier (char*) ;
 scalar_t__ stack_chk_fail_decl ;
 int void_type_node ;

tree
default_hidden_stack_protect_fail (void)
{

  return default_external_stack_protect_fail ();
}
