
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int coff_symbol_type ;
typedef int bfd ;
typedef int asymbol ;


 int bfd_coff_slurp_symbol_table (int *) ;
 long bfd_get_symcount (int *) ;
 int * obj_symbols (int *) ;

long
coff_canonicalize_symtab (bfd *abfd, asymbol **alocation)
{
  unsigned int counter;
  coff_symbol_type *symbase;
  coff_symbol_type **location = (coff_symbol_type **) alocation;

  if (!bfd_coff_slurp_symbol_table (abfd))
    return -1;

  symbase = obj_symbols (abfd);
  counter = bfd_get_symcount (abfd);
  while (counter-- > 0)
    *location++ = symbase++;

  *location = ((void*)0);

  return bfd_get_symcount (abfd);
}
