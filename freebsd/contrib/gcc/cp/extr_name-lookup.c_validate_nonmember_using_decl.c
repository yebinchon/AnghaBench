
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_P (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ SCOPE_REF ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int ) ;
 scalar_t__ get_first_fn (scalar_t__) ;
 scalar_t__ is_overloaded_fn (scalar_t__) ;
 scalar_t__ push_using_decl (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
validate_nonmember_using_decl (tree decl, tree scope, tree name)
{



  if (TYPE_P (scope))
    {
      error ("%qT is not a namespace", scope);
      return NULL_TREE;
    }
  else if (scope == error_mark_node)
    return NULL_TREE;

  if (TREE_CODE (decl) == TEMPLATE_ID_EXPR)
    {


      error ("a using-declaration cannot specify a template-id.  "
      "Try %<using %D%>", name);
      return NULL_TREE;
    }

  if (TREE_CODE (decl) == NAMESPACE_DECL)
    {
      error ("namespace %qD not allowed in using-declaration", decl);
      return NULL_TREE;
    }

  if (TREE_CODE (decl) == SCOPE_REF)
    {


      error ("%qT is not a namespace", TREE_OPERAND (decl, 0));
      return NULL_TREE;
    }

  if (is_overloaded_fn (decl))
    decl = get_first_fn (decl);

  gcc_assert (DECL_P (decl));


  return push_using_decl (scope, name);
}
