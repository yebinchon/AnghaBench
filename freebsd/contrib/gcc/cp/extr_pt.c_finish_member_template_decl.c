
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_TEMPLATE_INFO (scalar_t__) ;
 int CLASSTYPE_TEMPLATE_SPECIALIZATION (scalar_t__) ;
 scalar_t__ CLASSTYPE_TI_TEMPLATE (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 int DECL_TEMPLATE_SPECIALIZATION (scalar_t__) ;
 scalar_t__ DECL_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 int check_member_template (scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int ) ;

tree
finish_member_template_decl (tree decl)
{
  if (decl == error_mark_node)
    return error_mark_node;

  gcc_assert (DECL_P (decl));

  if (TREE_CODE (decl) == TYPE_DECL)
    {
      tree type;

      type = TREE_TYPE (decl);
      if (IS_AGGR_TYPE (type)
   && CLASSTYPE_TEMPLATE_INFO (type)
   && !CLASSTYPE_TEMPLATE_SPECIALIZATION (type))
 {
   tree tmpl = CLASSTYPE_TI_TEMPLATE (type);
   check_member_template (tmpl);
   return tmpl;
 }
      return NULL_TREE;
    }
  else if (TREE_CODE (decl) == FIELD_DECL)
    error ("data member %qD cannot be a member template", decl);
  else if (DECL_TEMPLATE_INFO (decl))
    {
      if (!DECL_TEMPLATE_SPECIALIZATION (decl))
 {
   check_member_template (DECL_TI_TEMPLATE (decl));
   return DECL_TI_TEMPLATE (decl);
 }
      else
 return decl;
    }
  else
    error ("invalid member template declaration %qD", decl);

  return error_mark_node;
}
