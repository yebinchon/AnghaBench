
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_address_info {size_t symbol_type; void* type; void* reg; void* offset; } ;
typedef void* rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 void* ADDRESS_CONST_INT ;
 void* ADDRESS_LO_SUM ;
 void* ADDRESS_REG ;
 void* ADDRESS_SYMBOLIC ;


 int GET_CODE (void*) ;




 int SMALL_INT (void*) ;


 int TARGET_MIPS16 ;
 int VOIDmode ;
 void* XEXP (void*,int) ;
 void* const0_rtx ;
 int const_arith_operand (void*,int ) ;
 size_t mips_classify_symbolic_expression (void*) ;
 int * mips_lo_relocs ;
 int * mips_split_p ;
 int mips_symbolic_address_p (size_t,int) ;
 int mips_symbolic_constant_p (void*,size_t*) ;
 int mips_valid_base_register_p (void*,int,int) ;

__attribute__((used)) static bool
mips_classify_address (struct mips_address_info *info, rtx x,
         enum machine_mode mode, int strict)
{
  switch (GET_CODE (x))
    {
    case 130:
    case 129:
      info->type = ADDRESS_REG;
      info->reg = x;
      info->offset = const0_rtx;
      return mips_valid_base_register_p (info->reg, mode, strict);

    case 131:
      info->type = ADDRESS_REG;
      info->reg = XEXP (x, 0);
      info->offset = XEXP (x, 1);
      return (mips_valid_base_register_p (info->reg, mode, strict)
       && const_arith_operand (info->offset, VOIDmode));

    case 132:
      info->type = ADDRESS_LO_SUM;
      info->reg = XEXP (x, 0);
      info->offset = XEXP (x, 1);
      info->symbol_type = mips_classify_symbolic_expression (info->offset);
      return (mips_valid_base_register_p (info->reg, mode, strict)
       && mips_symbolic_address_p (info->symbol_type, mode)
       && mips_lo_relocs[info->symbol_type] != 0);

    case 134:


      info->type = ADDRESS_CONST_INT;
      return !TARGET_MIPS16 && SMALL_INT (x);

    case 135:
    case 133:
    case 128:
      info->type = ADDRESS_SYMBOLIC;
      return (mips_symbolic_constant_p (x, &info->symbol_type)
       && mips_symbolic_address_p (info->symbol_type, mode)
       && !mips_split_p[info->symbol_type]);

    default:
      return 0;
    }
}
