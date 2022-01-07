
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct scope_binding {scalar_t__ value; } ;
typedef int cxx_binding ;


 int NAMESPACE_LEVEL (scalar_t__) ;
 scalar_t__ ORIGINAL_NAMESPACE (int ) ;
 int POP_TIMEVAR_AND_RETURN (int ,int) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 int ambiguous_decl (struct scope_binding*,int *,int) ;
 int * cxx_scope_find_binding_for_name (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int timevar_push (int ) ;

__attribute__((used)) static bool
lookup_using_namespace (tree name, struct scope_binding *val,
   tree usings, tree scope, int flags)
{
  tree iter;
  timevar_push (TV_NAME_LOOKUP);


  for (iter = usings; iter; iter = TREE_CHAIN (iter))
    if (TREE_VALUE (iter) == scope)
      {
 tree used = ORIGINAL_NAMESPACE (TREE_PURPOSE (iter));
 cxx_binding *val1 =
   cxx_scope_find_binding_for_name (NAMESPACE_LEVEL (used), name);

 if (val1)

   ambiguous_decl (val, val1, flags);
      }
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, val->value != error_mark_node);
}
