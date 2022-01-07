
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ DECIMAL_FLOAT_MODE_P (int) ;
 int VOIDmode ;
 int decimal_real_from_string (int *,char const*) ;
 int real_convert (int *,int,int *) ;
 int real_from_string (int *,char const*) ;

void
real_from_string3 (REAL_VALUE_TYPE *r, const char *s, enum machine_mode mode)
{
  if (DECIMAL_FLOAT_MODE_P (mode))
    decimal_real_from_string (r, s);
  else
    real_from_string (r, s);

  if (mode != VOIDmode)
    real_convert (r, mode, r);
}
