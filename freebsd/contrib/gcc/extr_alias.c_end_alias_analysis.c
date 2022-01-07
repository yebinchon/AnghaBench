
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__) ;
 int ggc_free (scalar_t__) ;
 int old_reg_base_value ;
 int reg_base_value ;
 scalar_t__ reg_known_equiv_p ;
 scalar_t__ reg_known_value ;
 scalar_t__ reg_known_value_size ;

void
end_alias_analysis (void)
{
  old_reg_base_value = reg_base_value;
  ggc_free (reg_known_value);
  reg_known_value = 0;
  reg_known_value_size = 0;
  free (reg_known_equiv_p);
  reg_known_equiv_p = 0;
}
