
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ cxx_binding ;


 int NAMESPACE_LEVEL (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 TYPE_1__* binding_for_name (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ global_namespace ;
 int supplement_binding (TYPE_1__*,scalar_t__) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
set_namespace_binding (tree name, tree scope, tree val)
{
  cxx_binding *b;

  timevar_push (TV_NAME_LOOKUP);
  if (scope == NULL_TREE)
    scope = global_namespace;
  b = binding_for_name (NAMESPACE_LEVEL (scope), name);
  if (!b->value || TREE_CODE (val) == OVERLOAD || val == error_mark_node)
    b->value = val;
  else
    supplement_binding (b, val);
  timevar_pop (TV_NAME_LOOKUP);
}
