
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asymbol ;


 int HAS_SYMS ;
 scalar_t__ bfd_canonicalize_symtab (int *,int **) ;
 int bfd_fatal (int ) ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_filename (int *) ;
 long bfd_get_symtab_upper_bound (int *) ;
 scalar_t__ symcount ;
 int ** xmalloc (long) ;

__attribute__((used)) static asymbol **
slurp_symtab (bfd *abfd)
{
  asymbol **sy = ((void*)0);
  long storage;

  if (!(bfd_get_file_flags (abfd) & HAS_SYMS))
    {
      symcount = 0;
      return ((void*)0);
    }

  storage = bfd_get_symtab_upper_bound (abfd);
  if (storage < 0)
    bfd_fatal (bfd_get_filename (abfd));
  if (storage)
    sy = xmalloc (storage);

  symcount = bfd_canonicalize_symtab (abfd, sy);
  if (symcount < 0)
    bfd_fatal (bfd_get_filename (abfd));
  return sy;
}
