
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_PRIMARY_TEMPLATE_TYPE (scalar_t__) ;
 scalar_t__ DECL_CLASS_TEMPLATE_P (scalar_t__) ;
 scalar_t__ IDENTIFIER_NODE ;
 int NULL_TREE ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPENAME_TYPE ;
 scalar_t__ TYPENAME_TYPE_FULLNAME (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_IDENTIFIER (scalar_t__) ;
 scalar_t__ cp_build_qualified_type (scalar_t__,int) ;
 int cp_type_quals (scalar_t__) ;
 int currently_open_class (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ lookup_member (scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ lookup_template_class (scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int pop_scope (scalar_t__) ;
 scalar_t__ push_scope (scalar_t__) ;
 int tf_error ;
 int tf_user ;

tree
resolve_typename_type (tree type, bool only_current_p)
{
  tree scope;
  tree name;
  tree decl;
  int quals;
  tree pushed_scope;

  gcc_assert (TREE_CODE (type) == TYPENAME_TYPE);

  scope = TYPE_CONTEXT (type);
  name = TYPE_IDENTIFIER (type);



  if (TREE_CODE (scope) == TYPENAME_TYPE)
    scope = resolve_typename_type (scope, only_current_p);


  if (scope == error_mark_node || TREE_CODE (scope) == TYPENAME_TYPE)
    return error_mark_node;


  if (TREE_CODE (scope) == TEMPLATE_TYPE_PARM)
    return type;


  if (only_current_p && !currently_open_class (scope))
    return error_mark_node;


  scope = CLASSTYPE_PRIMARY_TEMPLATE_TYPE (scope);



  pushed_scope = push_scope (scope);

  decl = lookup_member (scope, name, 0, 1);

  quals = cp_type_quals (type);


  if (!decl)
    type = error_mark_node;
  else if (TREE_CODE (TYPENAME_TYPE_FULLNAME (type)) == IDENTIFIER_NODE
    && TREE_CODE (decl) == TYPE_DECL)
    type = TREE_TYPE (decl);
  else if (TREE_CODE (TYPENAME_TYPE_FULLNAME (type)) == TEMPLATE_ID_EXPR
    && DECL_CLASS_TEMPLATE_P (decl))
    {
      tree tmpl;
      tree args;

      tmpl = TREE_OPERAND (TYPENAME_TYPE_FULLNAME (type), 0);
      args = TREE_OPERAND (TYPENAME_TYPE_FULLNAME (type), 1);

      type = lookup_template_class (tmpl, args, NULL_TREE, NULL_TREE,
                           0, tf_error | tf_user);
    }
  else
    type = error_mark_node;

  if (type != error_mark_node && quals)
    type = cp_build_qualified_type (type, quals);

  if (pushed_scope)
    pop_scope (pushed_scope);

  return type;
}
