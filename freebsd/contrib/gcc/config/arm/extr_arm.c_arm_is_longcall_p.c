
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CALL_LONG ;
 int CALL_SHORT ;
 scalar_t__ DECL_SECTION_NAME (int ) ;
 scalar_t__ ENCODED_LONG_CALL_ATTR_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ TARGET_LONG_CALLS ;
 int XEXP (int ,int ) ;
 int XSTR (int ,int ) ;
 scalar_t__ current_file_function_operand (int ) ;
 int current_function_decl ;
 scalar_t__ flag_function_sections ;

int
arm_is_longcall_p (rtx sym_ref, int call_cookie, int call_symbol)
{
  if (!call_symbol)
    {
      if (GET_CODE (sym_ref) != MEM)
 return 0;

      sym_ref = XEXP (sym_ref, 0);
    }

  if (GET_CODE (sym_ref) != SYMBOL_REF)
    return 0;

  if (call_cookie & CALL_SHORT)
    return 0;

  if (TARGET_LONG_CALLS)
    {
      if (flag_function_sections
   || DECL_SECTION_NAME (current_function_decl))


 return 1;
    }

  if (current_file_function_operand (sym_ref))
    return 0;

  return (call_cookie & CALL_LONG)
    || ENCODED_LONG_CALL_ATTR_P (XSTR (sym_ref, 0))
    || TARGET_LONG_CALLS;
}
