
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ c_promoting_integer_type_p (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ float_type_node ;
 scalar_t__ void_type_node ;

int
self_promoting_args_p (tree parms)
{
  tree t;
  for (t = parms; t; t = TREE_CHAIN (t))
    {
      tree type = TREE_VALUE (t);

      if (type == error_mark_node)
 continue;

      if (TREE_CHAIN (t) == 0 && type != void_type_node)
 return 0;

      if (type == 0)
 return 0;

      if (TYPE_MAIN_VARIANT (type) == float_type_node)
 return 0;

      if (c_promoting_integer_type_p (type))
 return 0;
    }
  return 1;
}
