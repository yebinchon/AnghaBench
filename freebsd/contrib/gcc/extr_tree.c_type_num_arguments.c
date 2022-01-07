
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (int ) ;

int
type_num_arguments (tree type)
{
  int i = 0;
  tree t;

  for (t = TYPE_ARG_TYPES (type); t; t = TREE_CHAIN (t))


    if (VOID_TYPE_P (TREE_VALUE (t)))
      break;
    else
      ++i;

  return i;
}
