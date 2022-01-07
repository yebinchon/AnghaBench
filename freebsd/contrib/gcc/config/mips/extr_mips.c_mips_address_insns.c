
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_address_info {int type; int symbol_type; int offset; int reg; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;






 int BLKmode ;
 int GET_MODE_SIZE (int) ;
 int TARGET_MIPS16 ;
 int UNITS_PER_WORD ;
 int mips16_unextended_reference_p (int,int ,int ) ;
 scalar_t__ mips_classify_address (struct mips_address_info*,int ,int,int) ;
 int mips_symbol_insns (int ) ;

int
mips_address_insns (rtx x, enum machine_mode mode)
{
  struct mips_address_info addr;
  int factor;

  if (mode == BLKmode)

    factor = 1;
  else

    factor = (GET_MODE_SIZE (mode) + UNITS_PER_WORD - 1) / UNITS_PER_WORD;

  if (mips_classify_address (&addr, x, mode, 0))
    switch (addr.type)
      {
      case 129:
 if (TARGET_MIPS16
     && !mips16_unextended_reference_p (mode, addr.reg, addr.offset))
   return factor * 2;
 return factor;

      case 130:
 return (TARGET_MIPS16 ? factor * 2 : factor);

      case 131:
 return factor;

      case 128:
 return factor * mips_symbol_insns (addr.symbol_type);
      }
  return 0;
}
