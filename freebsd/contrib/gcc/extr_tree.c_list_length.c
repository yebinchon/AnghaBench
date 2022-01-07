
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int gcc_assert (int) ;

int
list_length (tree t)
{
  tree p = t;



  int len = 0;

  while (p)
    {
      p = TREE_CHAIN (p);





      len++;
    }

  return len;
}
