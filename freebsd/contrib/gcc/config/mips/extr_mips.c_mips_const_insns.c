
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_integer_op {int dummy; } ;
typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef int HOST_WIDE_INT ;



 int CONST0_RTX (int ) ;

 int CONST_GP_P (int ) ;


 int GET_CODE (int ) ;
 int GET_MODE (int ) ;

 int INTVAL (int ) ;

 int MIPS_MAX_INTEGER_OPS ;
 int SMALL_OPERAND (int) ;
 int SMALL_OPERAND_UNSIGNED (int) ;

 int TARGET_MIPS16 ;
 int XEXP (int ,int ) ;
 int mips_build_integer (struct mips_integer_op*,int) ;
 int mips_classify_symbol (int ) ;
 int mips_split_const (int ,int *,int*) ;
 int * mips_split_p ;
 int mips_symbol_insns (int) ;
 int mips_symbolic_constant_p (int ,int*) ;

int
mips_const_insns (rtx x)
{
  struct mips_integer_op codes[MIPS_MAX_INTEGER_OPS];
  enum mips_symbol_type symbol_type;
  HOST_WIDE_INT offset;

  switch (GET_CODE (x))
    {
    case 130:
      if (TARGET_MIPS16
   || !mips_symbolic_constant_p (XEXP (x, 0), &symbol_type)
   || !mips_split_p[symbol_type])
 return 0;

      return 1;

    case 132:
      if (TARGET_MIPS16)




 return (INTVAL (x) >= 0 && INTVAL (x) < 256 ? 1
  : SMALL_OPERAND_UNSIGNED (INTVAL (x)) ? 2
  : INTVAL (x) > -256 && INTVAL (x) < 0 ? 2
  : SMALL_OPERAND_UNSIGNED (-INTVAL (x)) ? 3
  : 0);

      return mips_build_integer (codes, INTVAL (x));

    case 133:
    case 131:
      return (!TARGET_MIPS16 && x == CONST0_RTX (GET_MODE (x)) ? 1 : 0);

    case 134:
      if (CONST_GP_P (x))
 return 1;


      if (mips_symbolic_constant_p (x, &symbol_type))
 return mips_symbol_insns (symbol_type);




      mips_split_const (x, &x, &offset);
      if (offset != 0)
 {
   int n = mips_const_insns (x);
   if (n != 0)
     {
       if (SMALL_OPERAND (offset))
  return n + 1;
       else
  return n + 1 + mips_build_integer (codes, offset);
     }
 }
      return 0;

    case 128:
    case 129:
      return mips_symbol_insns (mips_classify_symbol (x));

    default:
      return 0;
    }
}
