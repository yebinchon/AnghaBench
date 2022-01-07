
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asection ;


 int _ (char*) ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 int bfd_check_format_matches (int *,int ,char***) ;
 int bfd_close (int *) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_fatal (char const*) ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int * bfd_get_section_by_name (int *,char const*) ;
 int bfd_nonfatal (int ) ;
 int bfd_object ;
 int * bfd_openr (char const*,char const*) ;
 int fatal (int ,char const*,...) ;
 int free (char**) ;
 int get_file_size (char const*) ;
 int list_matching_formats (char**) ;
 int slurp_symtab (int *) ;
 char** syms ;
 int translate_addresses (int *,int *) ;
 int xexit (int) ;

__attribute__((used)) static int
process_file (const char *file_name, const char *section_name,
       const char *target)
{
  bfd *abfd;
  asection *section;
  char **matching;

  if (get_file_size (file_name) < 1)
    return 1;

  abfd = bfd_openr (file_name, target);
  if (abfd == ((void*)0))
    bfd_fatal (file_name);

  if (bfd_check_format (abfd, bfd_archive))
    fatal (_("%s: cannot get addresses from archive"), file_name);

  if (! bfd_check_format_matches (abfd, bfd_object, &matching))
    {
      bfd_nonfatal (bfd_get_filename (abfd));
      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (matching);
   free (matching);
 }
      xexit (1);
    }

  if (section_name != ((void*)0))
    {
      section = bfd_get_section_by_name (abfd, section_name);
      if (section == ((void*)0))
 fatal (_("%s: cannot find section %s"), file_name, section_name);
    }
  else
    section = ((void*)0);

  slurp_symtab (abfd);

  translate_addresses (abfd, section);

  if (syms != ((void*)0))
    {
      free (syms);
      syms = ((void*)0);
    }

  bfd_close (abfd);

  return 0;
}
