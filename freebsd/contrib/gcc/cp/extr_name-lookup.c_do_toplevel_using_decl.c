
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ value; scalar_t__ type; } ;
typedef TYPE_1__ cxx_binding ;


 int NAMESPACE_LEVEL (int ) ;
 scalar_t__ NULL_TREE ;
 TYPE_1__* binding_for_name (int ,scalar_t__) ;
 int cp_emit_debug_info_for_using (scalar_t__,int ) ;
 int current_namespace ;
 int do_nonmember_using_decl (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int processing_template_decl ;
 scalar_t__ validate_nonmember_using_decl (scalar_t__,scalar_t__,scalar_t__) ;

void
do_toplevel_using_decl (tree decl, tree scope, tree name)
{
  tree oldval, oldtype, newval, newtype;
  tree orig_decl = decl;
  cxx_binding *binding;

  decl = validate_nonmember_using_decl (decl, scope, name);
  if (decl == NULL_TREE)
    return;

  binding = binding_for_name (NAMESPACE_LEVEL (current_namespace), name);

  oldval = binding->value;
  oldtype = binding->type;

  do_nonmember_using_decl (scope, name, oldval, oldtype, &newval, &newtype);


  if (!processing_template_decl)
    cp_emit_debug_info_for_using (orig_decl, current_namespace);


  if (newval)
    binding->value = newval;
  if (newtype)
    binding->type = newtype;
}
