
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ comp_except_types (scalar_t__,scalar_t__,int) ;
 int list_length (scalar_t__) ;

bool
comp_except_specs (tree t1, tree t2, bool exact)
{
  tree probe;
  tree base;
  int length = 0;

  if (t1 == t2)
    return 1;

  if (t1 == NULL_TREE)
    return t2 == NULL_TREE || !exact;
  if (!TREE_VALUE (t1))
    return t2 != NULL_TREE && !TREE_VALUE (t2);
  if (t2 == NULL_TREE)
    return 0;
  if (TREE_VALUE (t1) && !TREE_VALUE (t2))
    return !exact;





  for (base = t1; t2 != NULL_TREE; t2 = TREE_CHAIN (t2))
    {
      for (probe = base; probe != NULL_TREE; probe = TREE_CHAIN (probe))
 {
   tree a = TREE_VALUE (probe);
   tree b = TREE_VALUE (t2);

   if (comp_except_types (a, b, exact))
     {
       if (probe == base && exact)
  base = TREE_CHAIN (probe);
       length++;
       break;
     }
 }
      if (probe == NULL_TREE)
 return 0;
    }
  return !exact || base == NULL_TREE || length == list_length (t1);
}
