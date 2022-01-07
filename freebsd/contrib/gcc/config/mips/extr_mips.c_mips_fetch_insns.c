
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 int MEM_P (int ) ;
 int XEXP (int ,int ) ;
 int gcc_assert (int ) ;
 int mips_address_insns (int ,int ) ;

int
mips_fetch_insns (rtx x)
{
  gcc_assert (MEM_P (x));
  return mips_address_insns (XEXP (x, 0), GET_MODE (x));
}
