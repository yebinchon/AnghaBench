
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 long bfd_canonicalize_dynamic_symtab (int *,int **) ;
 long bfd_canonicalize_symtab (int *,int **) ;
 int bfd_error_no_symbols ;
 long bfd_get_dynamic_symtab_upper_bound (int *) ;
 long bfd_get_symtab_upper_bound (int *) ;
 int ** bfd_malloc (long) ;
 int bfd_set_error (int ) ;
 int free (int **) ;

long
_bfd_generic_read_minisymbols (bfd *abfd,
          bfd_boolean dynamic,
          void **minisymsp,
          unsigned int *sizep)
{
  long storage;
  asymbol **syms = ((void*)0);
  long symcount;

  if (dynamic)
    storage = bfd_get_dynamic_symtab_upper_bound (abfd);
  else
    storage = bfd_get_symtab_upper_bound (abfd);
  if (storage < 0)
    goto error_return;
  if (storage == 0)
    return 0;

  syms = bfd_malloc (storage);
  if (syms == ((void*)0))
    goto error_return;

  if (dynamic)
    symcount = bfd_canonicalize_dynamic_symtab (abfd, syms);
  else
    symcount = bfd_canonicalize_symtab (abfd, syms);
  if (symcount < 0)
    goto error_return;

  *minisymsp = syms;
  *sizep = sizeof (asymbol *);
  return symcount;

 error_return:
  bfd_set_error (bfd_error_no_symbols);
  if (syms != ((void*)0))
    free (syms);
  return -1;
}
