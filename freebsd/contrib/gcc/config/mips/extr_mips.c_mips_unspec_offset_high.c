
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;


 int Pmode ;
 int gen_rtx_HIGH (int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int mips_force_temporary (int ,int ) ;
 scalar_t__* mips_split_p ;
 int mips_unspec_address (int ,int) ;

__attribute__((used)) static rtx
mips_unspec_offset_high (rtx temp, rtx base, rtx addr,
    enum mips_symbol_type symbol_type)
{
  if (mips_split_p[symbol_type])
    {
      addr = gen_rtx_HIGH (Pmode, mips_unspec_address (addr, symbol_type));
      addr = mips_force_temporary (temp, addr);
      return mips_force_temporary (temp, gen_rtx_PLUS (Pmode, addr, base));
    }
  return base;
}
