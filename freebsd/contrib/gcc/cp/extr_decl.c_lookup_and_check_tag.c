
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ tag_scope ;
typedef enum tag_types { ____Placeholder_tag_types } tag_types ;


 scalar_t__ DECL_CLASS_TEMPLATE_P (scalar_t__) ;
 int DECL_SELF_REFERENCE_P (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_RESULT (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ check_elaborated_type_specifier (int,scalar_t__,int) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_name_prefer_type (scalar_t__,int) ;
 scalar_t__ lookup_type_scope (scalar_t__,scalar_t__) ;
 int print_candidates (scalar_t__) ;
 scalar_t__ ts_current ;
 scalar_t__ ts_global ;
 scalar_t__ ts_within_enclosing_non_class ;

__attribute__((used)) static tree
lookup_and_check_tag (enum tag_types tag_code, tree name,
        tag_scope scope, bool template_header_p)
{
  tree t;
  tree decl;
  if (scope == ts_global)
    {


      decl = lookup_name_prefer_type (name, 2);






      if (!decl)
 decl = lookup_type_scope (name, ts_within_enclosing_non_class);
    }
  else
    decl = lookup_type_scope (name, scope);

  if (decl && DECL_CLASS_TEMPLATE_P (decl))
    decl = DECL_TEMPLATE_RESULT (decl);

  if (decl && TREE_CODE (decl) == TYPE_DECL)
    {




      if (scope == ts_current && DECL_SELF_REFERENCE_P (decl))
 {
   error ("%qD has the same name as the class in which it is "
   "declared",
   decl);
   return error_mark_node;
 }
      t = check_elaborated_type_specifier (tag_code,
        decl,
        template_header_p
        | DECL_SELF_REFERENCE_P (decl));
      return t;
    }
  else if (decl && TREE_CODE (decl) == TREE_LIST)
    {
      error ("reference to %qD is ambiguous", name);
      print_candidates (decl);
      return error_mark_node;
    }
  else
    return NULL_TREE;
}
