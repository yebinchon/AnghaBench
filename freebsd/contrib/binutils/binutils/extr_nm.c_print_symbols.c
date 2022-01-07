
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 int bfd_fatal (int ) ;
 int bfd_get_filename (int *) ;
 int * bfd_make_empty_symbol (int *) ;
 int * bfd_minisymbol_to_symbol (int *,int ,int *,int *) ;
 int print_symbol (int *,int *,int ,int *) ;

__attribute__((used)) static void
print_symbols (bfd *abfd, bfd_boolean dynamic, void *minisyms, long symcount,
        unsigned int size, bfd *archive_bfd)
{
  asymbol *store;
  bfd_byte *from, *fromend;

  store = bfd_make_empty_symbol (abfd);
  if (store == ((void*)0))
    bfd_fatal (bfd_get_filename (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  for (; from < fromend; from += size)
    {
      asymbol *sym;

      sym = bfd_minisymbol_to_symbol (abfd, dynamic, from, store);
      if (sym == ((void*)0))
 bfd_fatal (bfd_get_filename (abfd));

      print_symbol (abfd, sym, (bfd_vma) 0, archive_bfd);
    }
}
