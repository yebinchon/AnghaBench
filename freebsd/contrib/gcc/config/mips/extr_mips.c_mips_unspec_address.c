
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef int HOST_WIDE_INT ;


 int Pmode ;
 int UNSPEC_ADDRESS_FIRST ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_CONST (int ,int ) ;
 int gen_rtx_UNSPEC (int ,int ,int) ;
 int mips_split_const (int ,int *,int *) ;
 int plus_constant (int ,int ) ;

rtx
mips_unspec_address (rtx address, enum mips_symbol_type symbol_type)
{
  rtx base;
  HOST_WIDE_INT offset;

  mips_split_const (address, &base, &offset);
  base = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, base),
    UNSPEC_ADDRESS_FIRST + symbol_type);
  return plus_constant (gen_rtx_CONST (Pmode, base), offset);
}
