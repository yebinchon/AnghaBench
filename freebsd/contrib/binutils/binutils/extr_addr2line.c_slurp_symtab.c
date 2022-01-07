
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int FALSE ;
 int HAS_SYMS ;
 int TRUE ;
 int bfd_fatal (int ) ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_filename (int *) ;
 long bfd_read_minisymbols (int *,int ,void*,unsigned int*) ;
 int syms ;

__attribute__((used)) static void
slurp_symtab (bfd *abfd)
{
  long symcount;
  unsigned int size;

  if ((bfd_get_file_flags (abfd) & HAS_SYMS) == 0)
    return;

  symcount = bfd_read_minisymbols (abfd, FALSE, (void *) &syms, &size);
  if (symcount == 0)
    symcount = bfd_read_minisymbols (abfd, TRUE , (void *) &syms, &size);

  if (symcount < 0)
    bfd_fatal (bfd_get_filename (abfd));
}
