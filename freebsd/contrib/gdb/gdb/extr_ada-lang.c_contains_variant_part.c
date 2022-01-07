
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_NFIELDS (struct type*) ;
 int ada_is_variant_part (struct type*,scalar_t__) ;

__attribute__((used)) static int
contains_variant_part (struct type *type)
{
  int f;

  if (type == ((void*)0) || TYPE_CODE (type) != TYPE_CODE_STRUCT
      || TYPE_NFIELDS (type) <= 0)
    return 0;
  return ada_is_variant_part (type, TYPE_NFIELDS (type) - 1);
}
