
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct scope_binding {int value; } ;


 struct scope_binding EMPTY_SCOPE_BINDING ;
 int LOOKUP_COMPLAIN ;
 int LOOKUP_PREFER_TYPES ;
 scalar_t__ NAMESPACE_DECL ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int error_mark_node ;
 scalar_t__ is_aggr_type (int ,int) ;
 int lookup_member (int ,int ,int,int) ;
 scalar_t__ qualified_lookup_using_namespace (int ,int ,struct scope_binding*,int) ;

tree
lookup_qualified_name (tree scope, tree name, bool is_type_p, bool complain)
{
  int flags = 0;
  tree t = NULL_TREE;

  if (TREE_CODE (scope) == NAMESPACE_DECL)
    {
      struct scope_binding binding = EMPTY_SCOPE_BINDING;

      flags |= LOOKUP_COMPLAIN;
      if (is_type_p)
 flags |= LOOKUP_PREFER_TYPES;
      if (qualified_lookup_using_namespace (name, scope, &binding, flags))
 t = binding.value;
    }
  else if (is_aggr_type (scope, complain))
    t = lookup_member (scope, name, 2, is_type_p);

  if (!t)
    return error_mark_node;
  return t;
}
