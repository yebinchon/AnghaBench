
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int pushdecl_maybe_friend (int ,int) ;

tree
pushdecl (tree x)
{
  return pushdecl_maybe_friend (x, 0);
}
