
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TREE_VEC ;
 scalar_t__ TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int same_type_p (int ,int ) ;

int
comp_template_parms (tree parms1, tree parms2)
{
  tree p1;
  tree p2;

  if (parms1 == parms2)
    return 1;

  for (p1 = parms1, p2 = parms2;
       p1 != NULL_TREE && p2 != NULL_TREE;
       p1 = TREE_CHAIN (p1), p2 = TREE_CHAIN (p2))
    {
      tree t1 = TREE_VALUE (p1);
      tree t2 = TREE_VALUE (p2);
      int i;

      gcc_assert (TREE_CODE (t1) == TREE_VEC);
      gcc_assert (TREE_CODE (t2) == TREE_VEC);

      if (TREE_VEC_LENGTH (t1) != TREE_VEC_LENGTH (t2))
 return 0;

      for (i = 0; i < TREE_VEC_LENGTH (t2); ++i)
 {
          tree parm1 = TREE_VALUE (TREE_VEC_ELT (t1, i));
          tree parm2 = TREE_VALUE (TREE_VEC_ELT (t2, i));



          if (parm1 == error_mark_node || parm2 == error_mark_node)
            return 1;

   if (TREE_CODE (parm1) != TREE_CODE (parm2))
     return 0;

   if (TREE_CODE (parm1) == TEMPLATE_TYPE_PARM)
     continue;
   else if (!same_type_p (TREE_TYPE (parm1), TREE_TYPE (parm2)))
     return 0;
 }
    }

  if ((p1 != NULL_TREE) != (p2 != NULL_TREE))


    return 0;

  return 1;
}
