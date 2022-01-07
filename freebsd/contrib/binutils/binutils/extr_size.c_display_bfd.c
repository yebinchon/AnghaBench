
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 scalar_t__ bfd_check_format_matches (int *,int ,char***) ;
 int bfd_core ;
 char* bfd_core_file_failing_command (int *) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int bfd_nonfatal (int ) ;
 int bfd_object ;
 int fputs (char*,int ) ;
 int free (char**) ;
 int list_matching_formats (char**) ;
 int print_sizes (int *) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int return_code ;
 int stdout ;

__attribute__((used)) static void
display_bfd (bfd *abfd)
{
  char **matching;

  if (bfd_check_format (abfd, bfd_archive))

    return;

  if (bfd_check_format_matches (abfd, bfd_object, &matching))
    {
      print_sizes (abfd);
      printf ("\n");
      return;
    }

  if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
    {
      bfd_nonfatal (bfd_get_filename (abfd));
      list_matching_formats (matching);
      free (matching);
      return_code = 3;
      return;
    }

  if (bfd_check_format_matches (abfd, bfd_core, &matching))
    {
      const char *core_cmd;

      print_sizes (abfd);
      fputs (" (core file", stdout);

      core_cmd = bfd_core_file_failing_command (abfd);
      if (core_cmd)
 printf (" invoked as %s", core_cmd);

      puts (")\n");
      return;
    }

  bfd_nonfatal (bfd_get_filename (abfd));

  if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
    {
      list_matching_formats (matching);
      free (matching);
    }

  return_code = 3;
}
