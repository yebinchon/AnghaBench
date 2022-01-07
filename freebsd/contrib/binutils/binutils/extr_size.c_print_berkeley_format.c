
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;
typedef int bfd ;


 int berkeley_sum ;
 char* bfd_get_filename (int *) ;
 int bfd_map_over_sections (int *,int ,int *) ;
 int * bfd_my_archive (int *) ;
 scalar_t__ bsssize ;
 scalar_t__ datasize ;
 int fputs (char*,int ) ;
 scalar_t__ octal ;
 int printf (char*,...) ;
 int putchar (char) ;
 int puts (char*) ;
 scalar_t__ radix ;
 int rprint_number (int,scalar_t__) ;
 scalar_t__ show_totals ;
 int stdout ;
 scalar_t__ textsize ;
 int total_bsssize ;
 int total_datasize ;
 int total_textsize ;

__attribute__((used)) static void
print_berkeley_format (bfd *abfd)
{
  static int files_seen = 0;
  bfd_size_type total;

  bsssize = 0;
  datasize = 0;
  textsize = 0;

  bfd_map_over_sections (abfd, berkeley_sum, ((void*)0));

  if (files_seen++ == 0)
    puts ((radix == octal) ? "   text\t   data\t    bss\t    oct\t    hex\tfilename" :
   "   text\t   data\t    bss\t    dec\t    hex\tfilename");

  total = textsize + datasize + bsssize;

  if (show_totals)
    {
      total_textsize += textsize;
      total_datasize += datasize;
      total_bsssize += bsssize;
    }

  rprint_number (7, textsize);
  putchar ('\t');
  rprint_number (7, datasize);
  putchar ('\t');
  rprint_number (7, bsssize);
  printf (((radix == octal) ? "\t%7lo\t%7lx\t" : "\t%7lu\t%7lx\t"),
   (unsigned long) total, (unsigned long) total);

  fputs (bfd_get_filename (abfd), stdout);

  if (bfd_my_archive (abfd))
    printf (" (ex %s)", bfd_get_filename (bfd_my_archive (abfd)));
}
