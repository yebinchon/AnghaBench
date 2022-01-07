
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_PURPOSE (scalar_t__) ;
 scalar_t__ current_class_type ;
 scalar_t__ current_function_decl ;
 int current_namespace ;
 int decl_namespace_context (scalar_t__) ;
 scalar_t__ decl_namespace_list ;

__attribute__((used)) static tree
current_decl_namespace (void)
{
  tree result;

  if (decl_namespace_list)
    return TREE_PURPOSE (decl_namespace_list);

  if (current_class_type)
    result = decl_namespace_context (current_class_type);
  else if (current_function_decl)
    result = decl_namespace_context (current_function_decl);
  else
    result = current_namespace;
  return result;
}
