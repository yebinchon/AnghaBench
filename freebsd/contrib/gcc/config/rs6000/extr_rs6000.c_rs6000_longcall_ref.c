
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int IDENTIFIER_POINTER (int ) ;
 int Pmode ;
 scalar_t__ SYMBOL_REF ;
 int VOIDmode ;
 char* XSTR (int ,int ) ;
 int force_reg (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,int ) ;
 int get_identifier (char const*) ;

rtx
rs6000_longcall_ref (rtx call_ref)
{
  const char *call_name;
  tree node;

  if (GET_CODE (call_ref) != SYMBOL_REF)
    return call_ref;


  call_name = XSTR (call_ref, 0);
  if (*call_name == '.')
    {
      while (*call_name == '.')
 call_name++;

      node = get_identifier (call_name);
      call_ref = gen_rtx_SYMBOL_REF (VOIDmode, IDENTIFIER_POINTER (node));
    }

  return force_reg (Pmode, call_ref);
}
