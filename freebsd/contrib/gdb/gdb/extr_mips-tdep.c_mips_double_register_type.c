
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 struct type* builtin_type_ieee_double_big ;
 struct type* builtin_type_ieee_double_little ;

__attribute__((used)) static struct type *
mips_double_register_type (void)
{
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    return builtin_type_ieee_double_big;
  else
    return builtin_type_ieee_double_little;
}
