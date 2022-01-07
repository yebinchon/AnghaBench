
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int comp_ptr_ttypes_real (int ,int ,int) ;

int
comp_ptr_ttypes (tree to, tree from)
{
  return comp_ptr_ttypes_real (to, from, 1);
}
