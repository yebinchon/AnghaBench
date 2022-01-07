
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etree_type ;


 int exp_get_vma (int *,int,char*) ;

int
exp_get_value_int (etree_type *tree, int def, char *name)
{
  return exp_get_vma (tree, def, name);
}
