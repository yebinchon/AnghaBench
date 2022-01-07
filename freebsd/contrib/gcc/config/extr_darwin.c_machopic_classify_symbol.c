
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machopic_addr_class { ____Placeholder_machopic_addr_class } machopic_addr_class ;


 int MACHOPIC_DEFINED_DATA ;
 int MACHOPIC_DEFINED_FUNCTION ;
 int MACHOPIC_UNDEFINED_DATA ;
 int MACHOPIC_UNDEFINED_FUNCTION ;
 int SYMBOL_REF_FLAGS (int ) ;
 int SYMBOL_REF_FUNCTION_P (int ) ;
 scalar_t__ machopic_symbol_defined_p (int ) ;

enum machopic_addr_class
machopic_classify_symbol (rtx sym_ref)
{
  int flags;
  bool function_p;

  flags = SYMBOL_REF_FLAGS (sym_ref);
  function_p = SYMBOL_REF_FUNCTION_P (sym_ref);
  if (machopic_symbol_defined_p (sym_ref))
    return (function_p
     ? MACHOPIC_DEFINED_FUNCTION : MACHOPIC_DEFINED_DATA);
  else
    return (function_p
     ? MACHOPIC_UNDEFINED_FUNCTION : MACHOPIC_UNDEFINED_DATA);
}
