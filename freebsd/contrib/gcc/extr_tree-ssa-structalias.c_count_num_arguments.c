
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static unsigned int
count_num_arguments (tree decl, bool *is_varargs)
{
  unsigned int i = 0;
  tree t;

  for (t = TYPE_ARG_TYPES (TREE_TYPE (decl));
       t;
       t = TREE_CHAIN (t))
    {
      if (TREE_VALUE (t) == void_type_node)
 break;
      i++;
    }

  if (!t)
    *is_varargs = 1;
  return i;
}
