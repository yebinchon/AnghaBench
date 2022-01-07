
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct scope_binding {scalar_t__ value; } ;
struct cp_binding_level {scalar_t__ kind; int using_directives; struct cp_binding_level* level_chain; } ;
typedef int cxx_binding ;


 scalar_t__ CP_DECL_CONTEXT (scalar_t__) ;
 int DECL_NAMESPACE_USING (scalar_t__) ;
 struct scope_binding EMPTY_SCOPE_BINDING ;
 int NAMESPACE_LEVEL (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 int TV_NAME_LOOKUP ;
 int ambiguous_decl (struct scope_binding*,int *,int) ;
 struct cp_binding_level* current_binding_level ;
 scalar_t__ current_decl_namespace () ;
 int * cxx_scope_find_binding_for_name (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ global_namespace ;
 int lookup_using_namespace (scalar_t__,struct scope_binding*,int ,scalar_t__,int) ;
 scalar_t__ sk_namespace ;
 int timevar_push (int ) ;

__attribute__((used)) static tree
unqualified_namespace_lookup (tree name, int flags)
{
  tree initial = current_decl_namespace ();
  tree scope = initial;
  tree siter;
  struct cp_binding_level *level;
  tree val = NULL_TREE;

  timevar_push (TV_NAME_LOOKUP);

  for (; !val; scope = CP_DECL_CONTEXT (scope))
    {
      struct scope_binding binding = EMPTY_SCOPE_BINDING;
      cxx_binding *b =
  cxx_scope_find_binding_for_name (NAMESPACE_LEVEL (scope), name);

      if (b)

 ambiguous_decl (&binding, b, flags);


      for (level = current_binding_level;
    level->kind != sk_namespace;
    level = level->level_chain)
 if (!lookup_using_namespace (name, &binding, level->using_directives,
         scope, flags))

   POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, error_mark_node);



      siter = initial;
      while (1)
 {
   if (!lookup_using_namespace (name, &binding,
           DECL_NAMESPACE_USING (siter),
           scope, flags))

     POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, error_mark_node);
   if (siter == scope) break;
   siter = CP_DECL_CONTEXT (siter);
 }

      val = binding.value;
      if (scope == global_namespace)
 break;
    }
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, val);
}
