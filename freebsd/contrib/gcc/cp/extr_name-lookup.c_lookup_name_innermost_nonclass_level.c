
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; struct cp_binding_level* level_chain; } ;
struct TYPE_4__ {scalar_t__ value; struct cp_binding_level* scope; } ;
typedef TYPE_1__ cxx_binding ;


 scalar_t__ DECL_DEAD_FOR_LOCAL (scalar_t__) ;
 TYPE_1__* IDENTIFIER_BINDING (scalar_t__) ;
 scalar_t__ IDENTIFIER_NAMESPACE_VALUE (scalar_t__) ;
 scalar_t__ LOCAL_BINDING_P (TYPE_1__*) ;
 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ VAR_DECL ;
 struct cp_binding_level* innermost_nonclass_level () ;
 scalar_t__ sk_cleanup ;
 scalar_t__ sk_namespace ;
 int timevar_push (int ) ;

__attribute__((used)) static tree
lookup_name_innermost_nonclass_level (tree name)
{
  struct cp_binding_level *b;
  tree t = NULL_TREE;

  timevar_push (TV_NAME_LOOKUP);
  b = innermost_nonclass_level ();

  if (b->kind == sk_namespace)
    {
      t = IDENTIFIER_NAMESPACE_VALUE (name);


      if (t != NULL_TREE && TREE_CODE (t) == TREE_LIST)
 t = TREE_VALUE (t);
    }
  else if (IDENTIFIER_BINDING (name)
    && LOCAL_BINDING_P (IDENTIFIER_BINDING (name)))
    {
      cxx_binding *binding;
      binding = IDENTIFIER_BINDING (name);
      while (1)
 {
   if (binding->scope == b
       && !(TREE_CODE (binding->value) == VAR_DECL
     && DECL_DEAD_FOR_LOCAL (binding->value)))
     POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, binding->value);

   if (b->kind == sk_cleanup)
     b = b->level_chain;
   else
     break;
 }
    }

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, t);
}
