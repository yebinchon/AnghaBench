
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int dummy; } ;
typedef int DOUBLEST ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int floatformat_arm_ext_big ;
 int floatformat_arm_ext_littlebyte_bigword ;
 int floatformat_from_doublest (int *,int *,void*) ;
 int floatformat_to_doublest (struct floatformat const*,void const*,int *) ;

__attribute__((used)) static void
convert_to_extended (const struct floatformat *fmt, void *dbl, const void *ptr)
{
  DOUBLEST d;
  floatformat_to_doublest (fmt, ptr, &d);
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    floatformat_from_doublest (&floatformat_arm_ext_big, &d, dbl);
  else
    floatformat_from_doublest (&floatformat_arm_ext_littlebyte_bigword,
          &d, dbl);
}
