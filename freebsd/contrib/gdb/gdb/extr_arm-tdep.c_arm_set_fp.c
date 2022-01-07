
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
typedef enum arm_float_model { ____Placeholder_arm_float_model } arm_float_model ;


 int ARM_FLOAT_FPA ;
 int ARM_FLOAT_SOFT_FPA ;
 scalar_t__ BFD_ENDIAN_LITTLE ;
 int arm_get_fp_model (struct gdbarch*) ;
 int floatformat_ieee_double_little ;
 int floatformat_ieee_double_littlebyte_bigword ;
 scalar_t__ gdbarch_byte_order (struct gdbarch*) ;
 int set_gdbarch_double_format (struct gdbarch*,int *) ;
 int set_gdbarch_long_double_format (struct gdbarch*,int *) ;

__attribute__((used)) static void
arm_set_fp (struct gdbarch *gdbarch)
{
  enum arm_float_model fp_model = arm_get_fp_model (gdbarch);

  if (gdbarch_byte_order (gdbarch) == BFD_ENDIAN_LITTLE
      && (fp_model == ARM_FLOAT_SOFT_FPA || fp_model == ARM_FLOAT_FPA))
    {
      set_gdbarch_double_format (gdbarch,
     &floatformat_ieee_double_littlebyte_bigword);
      set_gdbarch_long_double_format
 (gdbarch, &floatformat_ieee_double_littlebyte_bigword);
    }
  else
    {
      set_gdbarch_double_format (gdbarch, &floatformat_ieee_double_little);
      set_gdbarch_long_double_format (gdbarch,
          &floatformat_ieee_double_little);
    }
}
