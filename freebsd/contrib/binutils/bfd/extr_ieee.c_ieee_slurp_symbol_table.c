
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ read_symbols; } ;


 scalar_t__ FALSE ;
 TYPE_1__* IEEE_DATA (int *) ;
 scalar_t__ TRUE ;
 int ieee_slurp_external_symbols (int *) ;

__attribute__((used)) static bfd_boolean
ieee_slurp_symbol_table (bfd *abfd)
{
  if (! IEEE_DATA (abfd)->read_symbols)
    {
      if (! ieee_slurp_external_symbols (abfd))
 return FALSE;
      IEEE_DATA (abfd)->read_symbols = TRUE;
    }
  return TRUE;
}
