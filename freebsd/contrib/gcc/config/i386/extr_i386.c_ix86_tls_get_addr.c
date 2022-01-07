
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int Pmode ;
 int TARGET_64BIT ;
 scalar_t__ TARGET_ANY_GNU_TLS ;
 scalar_t__ gen_rtx_SYMBOL_REF (int ,char*) ;
 scalar_t__ ix86_tls_symbol ;

rtx
ix86_tls_get_addr (void)
{

  if (!ix86_tls_symbol)
    {
      ix86_tls_symbol = gen_rtx_SYMBOL_REF (Pmode,
         (TARGET_ANY_GNU_TLS
          && !TARGET_64BIT)
         ? "___tls_get_addr"
         : "__tls_get_addr");
    }

  return ix86_tls_symbol;
}
