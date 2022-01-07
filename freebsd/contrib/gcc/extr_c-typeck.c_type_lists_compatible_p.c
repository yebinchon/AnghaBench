
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ ERROR_MARK ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_SIZE (scalar_t__) ;
 scalar_t__ TYPE_TRANSPARENT_UNION (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ c_type_promotes_to (scalar_t__) ;
 int comptypes_internal (scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
type_lists_compatible_p (tree args1, tree args2)
{

  int val = 1;
  int newval = 0;

  while (1)
    {
      tree a1, mv1, a2, mv2;
      if (args1 == 0 && args2 == 0)
 return val;


      if (args1 == 0 || args2 == 0)
 return 0;
      mv1 = a1 = TREE_VALUE (args1);
      mv2 = a2 = TREE_VALUE (args2);
      if (mv1 && mv1 != error_mark_node && TREE_CODE (mv1) != ARRAY_TYPE)
 mv1 = TYPE_MAIN_VARIANT (mv1);
      if (mv2 && mv2 != error_mark_node && TREE_CODE (mv2) != ARRAY_TYPE)
 mv2 = TYPE_MAIN_VARIANT (mv2);




      if (a1 == 0)
 {
   if (c_type_promotes_to (a2) != a2)
     return 0;
 }
      else if (a2 == 0)
 {
   if (c_type_promotes_to (a1) != a1)
     return 0;
 }

      else if (TREE_CODE (a1) == ERROR_MARK
        || TREE_CODE (a2) == ERROR_MARK)
 ;
      else if (!(newval = comptypes_internal (mv1, mv2)))
 {


   if (TREE_CODE (a1) == UNION_TYPE
       && (TYPE_NAME (a1) == 0
    || TYPE_TRANSPARENT_UNION (a1))
       && TREE_CODE (TYPE_SIZE (a1)) == INTEGER_CST
       && tree_int_cst_equal (TYPE_SIZE (a1),
         TYPE_SIZE (a2)))
     {
       tree memb;
       for (memb = TYPE_FIELDS (a1);
     memb; memb = TREE_CHAIN (memb))
  {
    tree mv3 = TREE_TYPE (memb);
    if (mv3 && mv3 != error_mark_node
        && TREE_CODE (mv3) != ARRAY_TYPE)
      mv3 = TYPE_MAIN_VARIANT (mv3);
    if (comptypes_internal (mv3, mv2))
      break;
  }
       if (memb == 0)
  return 0;
     }
   else if (TREE_CODE (a2) == UNION_TYPE
     && (TYPE_NAME (a2) == 0
         || TYPE_TRANSPARENT_UNION (a2))
     && TREE_CODE (TYPE_SIZE (a2)) == INTEGER_CST
     && tree_int_cst_equal (TYPE_SIZE (a2),
       TYPE_SIZE (a1)))
     {
       tree memb;
       for (memb = TYPE_FIELDS (a2);
     memb; memb = TREE_CHAIN (memb))
  {
    tree mv3 = TREE_TYPE (memb);
    if (mv3 && mv3 != error_mark_node
        && TREE_CODE (mv3) != ARRAY_TYPE)
      mv3 = TYPE_MAIN_VARIANT (mv3);
    if (comptypes_internal (mv3, mv1))
      break;
  }
       if (memb == 0)
  return 0;
     }
   else
     return 0;
 }


      if (newval > val)
 val = newval;

      args1 = TREE_CHAIN (args1);
      args2 = TREE_CHAIN (args2);
    }
}
