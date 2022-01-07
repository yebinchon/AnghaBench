
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cgen_clear_signed_overflow_ok (int ) ;
 int cgen_set_signed_overflow_ok (int ) ;
 scalar_t__ flag_signed_overflow_ok ;
 int gas_cgen_cpu_desc ;

void
gas_cgen_begin ()
{
  if (flag_signed_overflow_ok)
    cgen_set_signed_overflow_ok (gas_cgen_cpu_desc);
  else
    cgen_clear_signed_overflow_ok (gas_cgen_cpu_desc);
}
