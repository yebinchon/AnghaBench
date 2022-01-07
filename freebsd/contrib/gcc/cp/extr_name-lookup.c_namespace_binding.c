
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_3__ {int * value; } ;
typedef TYPE_1__ cxx_binding ;


 int NAMESPACE_LEVEL (int *) ;
 int * NULL_TREE ;
 int * ORIGINAL_NAMESPACE (int *) ;
 TYPE_1__* cxx_scope_find_binding_for_name (int ,int *) ;
 int * global_namespace ;

tree
namespace_binding (tree name, tree scope)
{
  cxx_binding *binding;

  if (scope == ((void*)0))
    scope = global_namespace;
  else

    scope = ORIGINAL_NAMESPACE (scope);

  binding = cxx_scope_find_binding_for_name (NAMESPACE_LEVEL (scope), name);

  return binding ? binding->value : NULL_TREE;
}
