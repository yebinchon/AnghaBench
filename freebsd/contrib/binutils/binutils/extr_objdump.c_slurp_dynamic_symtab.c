
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asymbol ;


 int DYNAMIC ;
 int _ (char*) ;
 scalar_t__ bfd_canonicalize_dynamic_symtab (int *,int **) ;
 int bfd_fatal (int ) ;
 long bfd_get_dynamic_symtab_upper_bound (int *) ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_filename (int *) ;
 scalar_t__ dynsymcount ;
 int non_fatal (int ,int ) ;
 int ** xmalloc (long) ;

__attribute__((used)) static asymbol **
slurp_dynamic_symtab (bfd *abfd)
{
  asymbol **sy = ((void*)0);
  long storage;

  storage = bfd_get_dynamic_symtab_upper_bound (abfd);
  if (storage < 0)
    {
      if (!(bfd_get_file_flags (abfd) & DYNAMIC))
 {
   non_fatal (_("%s: not a dynamic object"), bfd_get_filename (abfd));
   dynsymcount = 0;
   return ((void*)0);
 }

      bfd_fatal (bfd_get_filename (abfd));
    }
  if (storage)
    sy = xmalloc (storage);

  dynsymcount = bfd_canonicalize_dynamic_symtab (abfd, sy);
  if (dynsymcount < 0)
    bfd_fatal (bfd_get_filename (abfd));
  return sy;
}
