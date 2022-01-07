
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int pushdecl_top_level_1 (int ,int *,int) ;

tree
pushdecl_top_level_and_finish (tree x, tree init)
{
  return pushdecl_top_level_1 (x, &init, 0);
}
