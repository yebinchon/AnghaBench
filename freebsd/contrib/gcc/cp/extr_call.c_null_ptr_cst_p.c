
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CP_INTEGRAL_TYPE_P (int ) ;
 int STRIP_NOPS (scalar_t__) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 scalar_t__ integral_constant_value (scalar_t__) ;
 scalar_t__ null_node ;

bool
null_ptr_cst_p (tree t)
{




  t = integral_constant_value (t);
  if (t == null_node)
    return 1;
  if (CP_INTEGRAL_TYPE_P (TREE_TYPE (t)) && integer_zerop (t))
    {
      STRIP_NOPS (t);
      if (!TREE_CONSTANT_OVERFLOW (t))
 return 1;
    }
  return 0;
}
