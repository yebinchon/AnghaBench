
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ OFFSET_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_OFFSET_BASETYPE (int ) ;
 int TYPE_PTRMEM_P (int ) ;
 int TYPE_READONLY (int ) ;
 int at_least_as_qualified_p (int ,int ) ;
 int objc_type_quals_match (int ,int ) ;
 scalar_t__ same_type_ignoring_top_level_qualifiers_p (int ,int ) ;
 int same_type_p (int ,int ) ;

__attribute__((used)) static int
comp_ptr_ttypes_real (tree to, tree from, int constp)
{
  bool to_more_cv_qualified = 0;

  for (; ; to = TREE_TYPE (to), from = TREE_TYPE (from))
    {
      if (TREE_CODE (to) != TREE_CODE (from))
 return 0;

      if (TREE_CODE (from) == OFFSET_TYPE
   && !same_type_p (TYPE_OFFSET_BASETYPE (from),
      TYPE_OFFSET_BASETYPE (to)))
 return 0;



      if (TREE_CODE (to) != FUNCTION_TYPE && TREE_CODE (to) != METHOD_TYPE)
 {



   bool objc_quals_match = objc_type_quals_match (to, from);

   if (!at_least_as_qualified_p (to, from) && !objc_quals_match)
     return 0;

   if (!at_least_as_qualified_p (from, to) && !objc_quals_match)
     {
       if (constp == 0)
  return 0;
       to_more_cv_qualified = 1;
     }

   if (constp > 0)
     constp &= TYPE_READONLY (to);
 }

      if (TREE_CODE (to) != POINTER_TYPE && !TYPE_PTRMEM_P (to))
 return ((constp >= 0 || to_more_cv_qualified)
  && same_type_ignoring_top_level_qualifiers_p (to, from));
    }
}
