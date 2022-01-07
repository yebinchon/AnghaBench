
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int copy_lang_type (int ) ;
 int copy_node (int ) ;

tree
copy_type (tree type)
{
  tree copy;

  copy = copy_node (type);
  copy_lang_type (copy);
  return copy;
}
