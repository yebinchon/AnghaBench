
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ this_entity; struct cp_binding_level* level_chain; } ;
struct TYPE_5__ {scalar_t__ value; scalar_t__ type; } ;
typedef TYPE_1__ cxx_binding ;


 scalar_t__ IDENTIFIER_TYPENAME_P (scalar_t__) ;
 scalar_t__ LOCAL_BINDING_P (TYPE_1__*) ;
 scalar_t__ LOCAL_CLASS_P (scalar_t__) ;
 int LOOKUP_PREFER_TYPES ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_FUNCTION (scalar_t__) ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 struct cp_binding_level* current_binding_level ;
 scalar_t__ current_class_type ;
 int gcc_assert (int) ;
 scalar_t__ hidden_name_p (scalar_t__) ;
 int lookup_flags (int,int) ;
 scalar_t__ lookup_fnfields (scalar_t__,scalar_t__,int ) ;
 TYPE_1__* outer_binding (scalar_t__,TYPE_1__*,int) ;
 scalar_t__ qualify_lookup (scalar_t__,int) ;
 int really_overloaded_fn (scalar_t__) ;
 scalar_t__ sk_class ;
 scalar_t__ sk_namespace ;
 int timevar_push (int ) ;
 scalar_t__ unqualified_namespace_lookup (scalar_t__,int) ;

tree
lookup_name_real (tree name, int prefer_type, int nonclass, bool block_p,
    int namespaces_only, int flags)
{
  cxx_binding *iter;
  tree val = NULL_TREE;

  timevar_push (TV_NAME_LOOKUP);



  if (IDENTIFIER_TYPENAME_P (name))
    {
      struct cp_binding_level *level;

      for (level = current_binding_level;
    level && level->kind != sk_namespace;
    level = level->level_chain)
 {
   tree class_type;
   tree operators;



   if (level->kind != sk_class)
     continue;


   class_type = level->this_entity;
   operators = lookup_fnfields (class_type, name, 0);
   if (operators)
     POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, operators);
 }

      POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);
    }

  flags |= lookup_flags (prefer_type, namespaces_only);



  if (current_class_type == NULL_TREE)
    nonclass = 1;

  if (block_p || !nonclass)
    for (iter = outer_binding (name, ((void*)0), !nonclass);
  iter;
  iter = outer_binding (name, iter, !nonclass))
      {
 tree binding;


 if (LOCAL_BINDING_P (iter) ? !block_p : nonclass)
   continue;


 if (qualify_lookup (iter->value, flags))
   binding = iter->value;
 else if ((flags & LOOKUP_PREFER_TYPES)
   && qualify_lookup (iter->type, flags))
   binding = iter->type;
 else
   binding = NULL_TREE;

 if (binding)
   {
     if (hidden_name_p (binding))
       {
  gcc_assert (current_class_type &&
       LOCAL_CLASS_P (current_class_type));





  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);
       }
     val = binding;
     break;
   }
      }


  if (!val)
    val = unqualified_namespace_lookup (name, flags);


  if (val && TREE_CODE (val) == OVERLOAD && !really_overloaded_fn (val))
    val = OVL_FUNCTION (val);

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, val);
}
