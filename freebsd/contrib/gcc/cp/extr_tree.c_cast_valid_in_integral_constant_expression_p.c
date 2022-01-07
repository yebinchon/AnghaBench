
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ INTEGRAL_OR_ENUMERATION_TYPE_P (scalar_t__) ;
 scalar_t__ dependent_type_p (scalar_t__) ;
 scalar_t__ error_mark_node ;

bool
cast_valid_in_integral_constant_expression_p (tree type)
{
  return (INTEGRAL_OR_ENUMERATION_TYPE_P (type)
   || dependent_type_p (type)
   || type == error_mark_node);
}
