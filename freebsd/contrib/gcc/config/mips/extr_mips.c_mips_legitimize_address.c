
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ PLUS ;
 int Pmode ;
 int XEXP (int ,int) ;
 int copy_to_mode_reg (int ,int ) ;
 int mips_add_offset (int ,int ,int ) ;
 int mips_legitimize_tls_address (int ) ;
 scalar_t__* mips_split_p ;
 int mips_split_symbol (int ,int ) ;
 scalar_t__ mips_symbolic_address_p (int,int) ;
 scalar_t__ mips_symbolic_constant_p (int ,int*) ;
 scalar_t__ mips_tls_operand_p (int ) ;
 int mips_valid_base_register_p (int ,int,int ) ;

bool
mips_legitimize_address (rtx *xloc, enum machine_mode mode)
{
  enum mips_symbol_type symbol_type;

  if (mips_tls_operand_p (*xloc))
    {
      *xloc = mips_legitimize_tls_address (*xloc);
      return 1;
    }


  if (mips_symbolic_constant_p (*xloc, &symbol_type)
      && mips_symbolic_address_p (symbol_type, mode)
      && mips_split_p[symbol_type])
    {
      *xloc = mips_split_symbol (0, *xloc);
      return 1;
    }

  if (GET_CODE (*xloc) == PLUS && GET_CODE (XEXP (*xloc, 1)) == CONST_INT)
    {

      rtx reg;

      reg = XEXP (*xloc, 0);
      if (!mips_valid_base_register_p (reg, mode, 0))
 reg = copy_to_mode_reg (Pmode, reg);
      *xloc = mips_add_offset (0, reg, INTVAL (XEXP (*xloc, 1)));
      return 1;
    }

  return 0;
}
