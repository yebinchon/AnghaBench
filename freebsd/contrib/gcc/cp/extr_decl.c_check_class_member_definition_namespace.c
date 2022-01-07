
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_CONTEXT (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int current_namespace ;
 int gcc_assert (int) ;
 int is_ancestor (int ,int ) ;
 int pedwarn (char*,int ,int ) ;
 scalar_t__ processing_explicit_instantiation ;
 scalar_t__ processing_specialization ;

__attribute__((used)) static void
check_class_member_definition_namespace (tree decl)
{


  gcc_assert (TREE_CODE (decl) == FUNCTION_DECL
       || TREE_CODE (decl) == VAR_DECL);



  if (processing_specialization)
    return;


  if (processing_explicit_instantiation)
    return;
  if (!is_ancestor (current_namespace, DECL_CONTEXT (decl)))
    pedwarn ("definition of %qD is not in namespace enclosing %qT",
      decl, DECL_CONTEXT (decl));
}
