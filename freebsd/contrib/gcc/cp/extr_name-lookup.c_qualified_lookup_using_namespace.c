
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct scope_binding {scalar_t__ value; int type; } ;
typedef int cxx_binding ;


 scalar_t__ DECL_NAMESPACE_USING (scalar_t__) ;
 int NAMESPACE_LEVEL (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ ORIGINAL_NAMESPACE (scalar_t__) ;
 int POP_TIMEVAR_AND_RETURN (int ,int) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_INDIRECT_USING (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 int ambiguous_decl (struct scope_binding*,int *,int) ;
 int * cxx_scope_find_binding_for_name (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ is_associated_namespace (scalar_t__,scalar_t__) ;
 int purpose_member (scalar_t__,scalar_t__) ;
 int timevar_push (int ) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
qualified_lookup_using_namespace (tree name, tree scope,
      struct scope_binding *result, int flags)
{

  tree seen = NULL_TREE;

  tree todo = NULL_TREE;
  tree todo_maybe = NULL_TREE;
  tree usings;
  timevar_push (TV_NAME_LOOKUP);

  scope = ORIGINAL_NAMESPACE (scope);
  while (scope && result->value != error_mark_node)
    {
      cxx_binding *binding =
 cxx_scope_find_binding_for_name (NAMESPACE_LEVEL (scope), name);
      seen = tree_cons (scope, NULL_TREE, seen);
      if (binding)

 ambiguous_decl (result, binding, flags);





      for (usings = DECL_NAMESPACE_USING (scope); usings;
    usings = TREE_CHAIN (usings))

 if (!TREE_INDIRECT_USING (usings))
   {





     if (is_associated_namespace (scope, TREE_PURPOSE (usings))
  && !purpose_member (TREE_PURPOSE (usings), seen)
  && !purpose_member (TREE_PURPOSE (usings), todo))
       todo = tree_cons (TREE_PURPOSE (usings), NULL_TREE, todo);
     else if ((!result->value && !result->type)
       && !purpose_member (TREE_PURPOSE (usings), seen)
       && !purpose_member (TREE_PURPOSE (usings), todo)
       && !purpose_member (TREE_PURPOSE (usings), todo_maybe))
       todo_maybe = tree_cons (TREE_PURPOSE (usings), NULL_TREE,
          todo_maybe);
   }
      if (todo)
 {
   scope = TREE_PURPOSE (todo);
   todo = TREE_CHAIN (todo);
 }
      else if (todo_maybe
        && (!result->value && !result->type))
 {
   scope = TREE_PURPOSE (todo_maybe);
   todo = TREE_CHAIN (todo_maybe);
   todo_maybe = NULL_TREE;
 }
      else
 scope = NULL_TREE;
    }
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, result->value != error_mark_node);
}
