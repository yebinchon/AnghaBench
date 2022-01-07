
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int pushdecl_top_level_1 (int ,int *,int) ;

tree
pushdecl_top_level_maybe_friend (tree x, bool is_friend)
{
  return pushdecl_top_level_1 (x, ((void*)0), is_friend);
}
