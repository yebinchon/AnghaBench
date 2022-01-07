
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int DECL_RTL (int ) ;
 int DECL_WEAK (int ) ;
 scalar_t__ ENCODED_SHORT_CALL_ATTR_P (int ) ;
 scalar_t__ XEXP (int ,int ) ;
 int XSTR (scalar_t__,int ) ;
 int current_function_decl ;

__attribute__((used)) static int
current_file_function_operand (rtx sym_ref)
{



  if (ENCODED_SHORT_CALL_ATTR_P (XSTR (sym_ref, 0)))
    return 1;




  if (sym_ref == XEXP (DECL_RTL (current_function_decl), 0)
      && !DECL_WEAK (current_function_decl))
    return 1;


  return 0;
}
