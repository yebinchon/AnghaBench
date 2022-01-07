
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 scalar_t__ DECL_COMMON (int ) ;
 int MACHO_SYMBOL_FLAG_DEFINED ;
 int MACHO_SYMBOL_FLAG_VARIABLE ;
 int SYMBOL_REF_DECL (int ) ;
 int SYMBOL_REF_EXTERNAL_P (int ) ;
 int SYMBOL_REF_FLAGS (int ) ;
 scalar_t__ SYMBOL_REF_LOCAL_P (int ) ;

__attribute__((used)) static int
machopic_symbol_defined_p (rtx sym_ref)
{
  if (SYMBOL_REF_FLAGS (sym_ref) & MACHO_SYMBOL_FLAG_DEFINED)
    return 1;



  if (SYMBOL_REF_LOCAL_P (sym_ref) && ! SYMBOL_REF_EXTERNAL_P (sym_ref))
    {


      if (SYMBOL_REF_FLAGS (sym_ref) & MACHO_SYMBOL_FLAG_VARIABLE)
 {
   tree decl = SYMBOL_REF_DECL (sym_ref);
   if (!decl)
     return 1;
   if (DECL_COMMON (decl))
     return 0;
 }
      return 1;
    }
  return 0;
}
