
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_REGISTER_CONVERTIBLE (int) ;
 scalar_t__ DEPRECATED_REGISTER_CONVERTIBLE_P () ;

int
legacy_convert_register_p (int regnum, struct type *type)
{
  return (DEPRECATED_REGISTER_CONVERTIBLE_P ()
   && DEPRECATED_REGISTER_CONVERTIBLE (regnum));
}
