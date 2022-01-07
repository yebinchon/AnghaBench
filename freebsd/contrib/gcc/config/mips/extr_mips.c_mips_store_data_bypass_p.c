
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int PATTERN (int ) ;
 scalar_t__ UNSPEC_VOLATILE ;
 int store_data_bypass_p (int ,int ) ;

int
mips_store_data_bypass_p (rtx out_insn, rtx in_insn)
{
  if (GET_CODE (PATTERN (in_insn)) == UNSPEC_VOLATILE)
    return 0;

  return ! store_data_bypass_p (out_insn, in_insn);
}
