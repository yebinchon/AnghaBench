
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ NAMESPACE_DECL ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int at_class_scope_p () ;
 int current_class_type ;
 int push_decl_namespace (int ) ;
 int push_nested_class (int ) ;
 int same_type_p (int ,int ) ;

tree
push_scope (tree t)
{
  if (TREE_CODE (t) == NAMESPACE_DECL)
    push_decl_namespace (t);
  else if (CLASS_TYPE_P (t))
    {
      if (!at_class_scope_p ()
   || !same_type_p (current_class_type, t))
 push_nested_class (t);
      else




 t = NULL_TREE;
    }

  return t;
}
