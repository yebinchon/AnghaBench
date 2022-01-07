
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 int DECL_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ DECL_USE_TEMPLATE (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ PRIMARY_TEMPLATE_P (int ) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int is_overloaded_fn (scalar_t__) ;
 int pedwarn (char*,scalar_t__) ;

void
check_template_keyword (tree decl)
{
  if (TREE_CODE (decl) != TEMPLATE_DECL
      && TREE_CODE (decl) != TEMPLATE_ID_EXPR)
    {
      if (!is_overloaded_fn (decl))
 pedwarn ("%qD is not a template", decl);
      else
 {
   tree fns;
   fns = decl;
   if (BASELINK_P (fns))
     fns = BASELINK_FUNCTIONS (fns);
   while (fns)
     {
       tree fn = OVL_CURRENT (fns);
       if (TREE_CODE (fn) == TEMPLATE_DECL
    || TREE_CODE (fn) == TEMPLATE_ID_EXPR)
  break;
       if (TREE_CODE (fn) == FUNCTION_DECL
    && DECL_USE_TEMPLATE (fn)
    && PRIMARY_TEMPLATE_P (DECL_TI_TEMPLATE (fn)))
  break;
       fns = OVL_NEXT (fns);
     }
   if (!fns)
     pedwarn ("%qD is not a template", decl);
 }
    }
}
