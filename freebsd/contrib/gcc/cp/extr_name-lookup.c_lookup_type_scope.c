
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ tag_scope ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ this_entity; struct cp_binding_level* level_chain; } ;
struct TYPE_7__ {struct cp_binding_level* scope; scalar_t__ value; scalar_t__ type; } ;
typedef TYPE_1__ cxx_binding ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 int INHERITED_VALUE_BINDING_P (TYPE_1__*) ;
 scalar_t__ LOCAL_BINDING_P (TYPE_1__*) ;
 int LOOKUP_PREFER_TYPES ;
 int NAMESPACE_LEVEL (int ) ;
 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 int TV_NAME_LOOKUP ;
 struct cp_binding_level* current_binding_level ;
 int current_decl_namespace () ;
 TYPE_1__* cxx_scope_find_binding_for_name (int ,scalar_t__) ;
 TYPE_1__* outer_binding (scalar_t__,TYPE_1__*,int) ;
 scalar_t__ qualify_lookup (scalar_t__,int ) ;
 scalar_t__ sk_class ;
 scalar_t__ sk_cleanup ;
 scalar_t__ sk_namespace ;
 scalar_t__ sk_template_parms ;
 int timevar_push (int ) ;
 scalar_t__ ts_current ;
 scalar_t__ ts_within_enclosing_non_class ;

tree
lookup_type_scope (tree name, tag_scope scope)
{
  cxx_binding *iter = ((void*)0);
  tree val = NULL_TREE;

  timevar_push (TV_NAME_LOOKUP);


  if (current_binding_level->kind != sk_namespace)
    iter = outer_binding (name, ((void*)0), 1);
  for (; iter; iter = outer_binding (name, iter, 1))
    {
      if (qualify_lookup (iter->type, LOOKUP_PREFER_TYPES)
   && (scope != ts_current
       || LOCAL_BINDING_P (iter)
       || DECL_CONTEXT (iter->type) == iter->scope->this_entity))
 val = iter->type;
      else if ((scope != ts_current
  || !INHERITED_VALUE_BINDING_P (iter))
        && qualify_lookup (iter->value, LOOKUP_PREFER_TYPES))
 val = iter->value;

      if (val)
 break;
    }


  if (!val)
    {
      iter = cxx_scope_find_binding_for_name
        (NAMESPACE_LEVEL (current_decl_namespace ()), name);

      if (iter)
 {

   if (qualify_lookup (iter->type, LOOKUP_PREFER_TYPES))
     val = iter->type;
   else if (qualify_lookup (iter->value, LOOKUP_PREFER_TYPES))
     val = iter->value;
 }

    }



  if (val)
    {
      struct cp_binding_level *b = current_binding_level;
      while (b)
 {
   if (iter->scope == b)
     POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, val);

   if (b->kind == sk_cleanup || b->kind == sk_template_parms)
     b = b->level_chain;
   else if (b->kind == sk_class
     && scope == ts_within_enclosing_non_class)
     b = b->level_chain;
   else
     break;
 }
    }

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);
}
