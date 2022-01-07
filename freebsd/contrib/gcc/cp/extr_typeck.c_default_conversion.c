
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGRAL_OR_ENUMERATION_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 int decay_conversion (int ) ;
 int perform_integral_promotions (int ) ;

tree
default_conversion (tree exp)
{



  if (INTEGRAL_OR_ENUMERATION_TYPE_P (TREE_TYPE (exp)))
    exp = perform_integral_promotions (exp);

  exp = decay_conversion (exp);

  return exp;
}
