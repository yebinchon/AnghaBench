
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 scalar_t__ TARGET_MIPS16 ;
 int copy_rtx (int ) ;
 int gen_rtx_HIGH (int ,int ) ;
 int gen_rtx_LO_SUM (int ,int ,int ) ;
 int mips16_gp_pseudo_reg () ;
 int mips_force_temporary (int ,int ) ;

rtx
mips_split_symbol (rtx temp, rtx addr)
{
  rtx high;

  if (TARGET_MIPS16)
    high = mips16_gp_pseudo_reg ();
  else
    high = mips_force_temporary (temp, gen_rtx_HIGH (Pmode, copy_rtx (addr)));
  return gen_rtx_LO_SUM (Pmode, high, addr);
}
