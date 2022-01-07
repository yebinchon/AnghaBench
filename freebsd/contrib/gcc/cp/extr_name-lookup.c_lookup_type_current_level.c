
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; struct cp_binding_level* level_chain; int type_shadowed; } ;


 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 scalar_t__ REAL_IDENTIFIER_TYPE_VALUE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 struct cp_binding_level* current_binding_level ;
 int gcc_assert (int) ;
 scalar_t__ global_type_node ;
 scalar_t__ purpose_member (scalar_t__,int ) ;
 scalar_t__ sk_cleanup ;
 scalar_t__ sk_namespace ;
 int timevar_push (int ) ;

__attribute__((used)) static tree
lookup_type_current_level (tree name)
{
  tree t = NULL_TREE;

  timevar_push (TV_NAME_LOOKUP);
  gcc_assert (current_binding_level->kind != sk_namespace);

  if (REAL_IDENTIFIER_TYPE_VALUE (name) != NULL_TREE
      && REAL_IDENTIFIER_TYPE_VALUE (name) != global_type_node)
    {
      struct cp_binding_level *b = current_binding_level;
      while (1)
 {
   if (purpose_member (name, b->type_shadowed))
     POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP,
        REAL_IDENTIFIER_TYPE_VALUE (name));
   if (b->kind == sk_cleanup)
     b = b->level_chain;
   else
     break;
 }
    }

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, t);
}
