
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
 int floatformat_from_doublest (struct floatformat const*,int *,void*) ;
 int floatformat_to_doublest (int *,void const*,int *) ;

__attribute__((used)) static void
convert_from_extended (const struct floatformat *fmt, const void *ptr,
         void *dbl)
{
  DOUBLEST d;
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    floatformat_to_doublest (&floatformat_arm_ext_big, ptr, &d);
  else
    floatformat_to_doublest (&floatformat_arm_ext_littlebyte_bigword,
        ptr, &d);
  floatformat_from_doublest (fmt, &d, dbl);
}
