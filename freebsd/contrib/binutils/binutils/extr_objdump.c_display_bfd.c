
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 scalar_t__ bfd_check_format_matches (int *,int ,char***) ;
 int bfd_core ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 scalar_t__ bfd_error_file_not_recognized ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int bfd_object ;
 int dump_bfd (int *) ;
 int free (char**) ;
 int list_matching_formats (char**) ;
 int nonfatal (int ) ;

__attribute__((used)) static void
display_bfd (bfd *abfd)
{
  char **matching;

  if (bfd_check_format_matches (abfd, bfd_object, &matching))
    {
      dump_bfd (abfd);
      return;
    }

  if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
    {
      nonfatal (bfd_get_filename (abfd));
      list_matching_formats (matching);
      free (matching);
      return;
    }

  if (bfd_get_error () != bfd_error_file_not_recognized)
    {
      nonfatal (bfd_get_filename (abfd));
      return;
    }

  if (bfd_check_format_matches (abfd, bfd_core, &matching))
    {
      dump_bfd (abfd);
      return;
    }

  nonfatal (bfd_get_filename (abfd));

  if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
    {
      list_matching_formats (matching);
      free (matching);
    }
}
