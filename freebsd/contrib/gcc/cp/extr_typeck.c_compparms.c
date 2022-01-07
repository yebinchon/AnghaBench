
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int same_type_p (int ,int ) ;

bool
compparms (tree parms1, tree parms2)
{
  tree t1, t2;




  for (t1 = parms1, t2 = parms2;
       t1 || t2;
       t1 = TREE_CHAIN (t1), t2 = TREE_CHAIN (t2))
    {


      if (!t1 || !t2)
 return 0;
      if (!same_type_p (TREE_VALUE (t1), TREE_VALUE (t2)))
 return 0;
    }
  return 1;
}
