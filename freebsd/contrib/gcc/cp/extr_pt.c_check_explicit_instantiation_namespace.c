
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int current_namespace ;
 int decl_namespace_context (int ) ;
 int is_ancestor (int ,int ) ;
 int pedwarn (char*,int ,int ,int ) ;

__attribute__((used)) static void
check_explicit_instantiation_namespace (tree spec)
{
  tree ns;



  ns = decl_namespace_context (spec);
  if (!is_ancestor (current_namespace, ns))
    pedwarn ("explicit instantiation of %qD in namespace %qD "
      "(which does not enclose namespace %qD)",
      spec, current_namespace, ns);
}
