
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ASM_OUTPUT_SPECIAL_POOL_ENTRY_P (int ,int ) ;

 int CONSTANT_POOL_ADDRESS_P (int ) ;

 int GET_CODE (int ) ;


 int Pmode ;
 int RS6000_SYMBOL_REF_TLS_P (int ) ;

 int XEXP (int ,int) ;
 int XSTR (int ,int ) ;
 int get_pool_constant (int ) ;
 int strcmp (int ,int ) ;
 int toc_label_name ;

__attribute__((used)) static int
constant_pool_expr_1 (rtx op, int *have_sym, int *have_toc)
{
  switch (GET_CODE (op))
    {
    case 128:
      if (RS6000_SYMBOL_REF_TLS_P (op))
 return 0;
      else if (CONSTANT_POOL_ADDRESS_P (op))
 {
   if (ASM_OUTPUT_SPECIAL_POOL_ENTRY_P (get_pool_constant (op), Pmode))
     {
       *have_sym = 1;
       return 1;
     }
   else
     return 0;
 }
      else if (! strcmp (XSTR (op, 0), toc_label_name))
 {
   *have_toc = 1;
   return 1;
 }
      else
 return 0;
    case 129:
    case 130:
      return (constant_pool_expr_1 (XEXP (op, 0), have_sym, have_toc)
       && constant_pool_expr_1 (XEXP (op, 1), have_sym, have_toc));
    case 132:
      return constant_pool_expr_1 (XEXP (op, 0), have_sym, have_toc);
    case 131:
      return 1;
    default:
      return 0;
    }
}
