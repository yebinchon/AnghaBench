
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 scalar_t__ c_promoting_integer_type_p (int ) ;
 int double_type_node ;
 scalar_t__ float_type_node ;
 int integer_type_node ;
 int unsigned_type_node ;

tree
c_type_promotes_to (tree type)
{
  if (TYPE_MAIN_VARIANT (type) == float_type_node)
    return double_type_node;

  if (c_promoting_integer_type_p (type))
    {

      if (TYPE_UNSIGNED (type)
   && (TYPE_PRECISION (type) == TYPE_PRECISION (integer_type_node)))
 return unsigned_type_node;
      return integer_type_node;
    }

  return type;
}
