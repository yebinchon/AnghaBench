
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int FALSE ;
 int HAS_SYMS ;
 int _ (char*) ;
 int bfd_fatal (int ) ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_get_section_by_name (int *,char*) ;
 long bfd_read_minisymbols (int *,int ,void**,unsigned int*) ;
 long filter_symbols (int *,void*,long,unsigned int) ;
 int free (void*) ;
 int non_fatal (int ,int ) ;
 int scan_filtered_symbols (int *,void*,long,unsigned int) ;

__attribute__((used)) static void
scan_all_symbols (bfd *abfd)
{
  long symcount;
  void *minisyms;
  unsigned int size;




  if (bfd_get_section_by_name (abfd, ".idata$4"))
    return;

  if (! (bfd_get_file_flags (abfd) & HAS_SYMS))
    {

      non_fatal (_("%s: no symbols"), bfd_get_filename (abfd));
      return;
    }

  symcount = bfd_read_minisymbols (abfd, FALSE, &minisyms, &size);
  if (symcount < 0)
    bfd_fatal (bfd_get_filename (abfd));

  if (symcount == 0)
    {

      non_fatal (_("%s: no symbols"), bfd_get_filename (abfd));
      return;
    }




  symcount = filter_symbols (abfd, minisyms, symcount, size);
  scan_filtered_symbols (abfd, minisyms, symcount, size);

  free (minisyms);
}
