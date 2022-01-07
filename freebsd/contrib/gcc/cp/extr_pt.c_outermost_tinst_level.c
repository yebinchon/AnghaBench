
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int current_tinst_level ;
 int tree_last (int ) ;

tree
outermost_tinst_level (void)
{
  return tree_last (current_tinst_level);
}
