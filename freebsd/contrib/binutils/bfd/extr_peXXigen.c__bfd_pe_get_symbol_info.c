
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol_info ;
typedef int bfd ;
typedef int asymbol ;


 int coff_get_symbol_info (int *,int *,int *) ;

void
_bfd_XX_get_symbol_info (bfd * abfd, asymbol *symbol, symbol_info *ret)
{
  coff_get_symbol_info (abfd, symbol, ret);
}
