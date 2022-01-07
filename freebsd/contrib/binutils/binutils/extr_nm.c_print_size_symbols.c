
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size_sym {scalar_t__ size; int minisym; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 int bfd_fatal (int ) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_get_flavour (int *) ;
 int bfd_get_section (int *) ;
 int * bfd_make_empty_symbol (int *) ;
 int * bfd_minisymbol_to_symbol (int *,int ,int ,int *) ;
 scalar_t__ bfd_section_vma (int *,int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 int print_symbol (int *,int *,scalar_t__,int *) ;

__attribute__((used)) static void
print_size_symbols (bfd *abfd, bfd_boolean dynamic,
      struct size_sym *symsizes, long symcount,
      bfd *archive_bfd)
{
  asymbol *store;
  struct size_sym *from, *fromend;

  store = bfd_make_empty_symbol (abfd);
  if (store == ((void*)0))
    bfd_fatal (bfd_get_filename (abfd));

  from = symsizes;
  fromend = from + symcount;
  for (; from < fromend; from++)
    {
      asymbol *sym;
      bfd_vma ssize;

      sym = bfd_minisymbol_to_symbol (abfd, dynamic, from->minisym, store);
      if (sym == ((void*)0))
 bfd_fatal (bfd_get_filename (abfd));


      if (bfd_get_flavour (abfd) == bfd_target_elf_flavour)
 ssize = from->size;
      else
 ssize = from->size - bfd_section_vma (abfd, bfd_get_section (sym));

      print_symbol (abfd, sym, ssize, archive_bfd);
    }
}
