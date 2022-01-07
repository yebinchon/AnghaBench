
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ecoff_symbol_type ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_2__ {int * canonical_symbols; } ;


 int _bfd_ecoff_slurp_symbol_table (int *) ;
 long bfd_get_symcount (int *) ;
 TYPE_1__* ecoff_data (int *) ;

long
_bfd_ecoff_canonicalize_symtab (bfd *abfd, asymbol **alocation)
{
  unsigned int counter = 0;
  ecoff_symbol_type *symbase;
  ecoff_symbol_type **location = (ecoff_symbol_type **) alocation;

  if (! _bfd_ecoff_slurp_symbol_table (abfd))
    return -1;
  if (bfd_get_symcount (abfd) == 0)
    return 0;

  symbase = ecoff_data (abfd)->canonical_symbols;
  while (counter < bfd_get_symcount (abfd))
    {
      *(location++) = symbase++;
      counter++;
    }
  *location++ = ((void*)0);
  return bfd_get_symcount (abfd);
}
