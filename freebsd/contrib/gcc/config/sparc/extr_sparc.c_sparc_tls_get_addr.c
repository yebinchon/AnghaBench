
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int Pmode ;
 scalar_t__ gen_rtx_SYMBOL_REF (int ,char*) ;
 scalar_t__ sparc_tls_symbol ;

__attribute__((used)) static rtx
sparc_tls_get_addr (void)
{
  if (!sparc_tls_symbol)
    sparc_tls_symbol = gen_rtx_SYMBOL_REF (Pmode, "__tls_get_addr");

  return sparc_tls_symbol;
}
