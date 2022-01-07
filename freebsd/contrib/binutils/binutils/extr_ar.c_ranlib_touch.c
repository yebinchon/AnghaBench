
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int O_BINARY ;
 int O_RDWR ;
 int _ (char*) ;
 int bfd_archive ;
 int bfd_check_format_matches (int *,int ,char***) ;
 int bfd_close (int *) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_error_system_call ;
 int bfd_fatal (char const*) ;
 int * bfd_fdopenr (char const*,char const*,int) ;
 scalar_t__ bfd_get_error () ;
 int bfd_has_map (int *) ;
 int bfd_nonfatal (char const*) ;
 int bfd_set_error (int ) ;
 int bfd_update_armap_timestamp (int *) ;
 int fatal (int ,char const*) ;
 int free (char**) ;
 int get_file_size (char const*) ;
 int list_matching_formats (char**) ;
 int open (char const*,int,int ) ;
 int ranlib_only (char const*) ;
 int xexit (int) ;

__attribute__((used)) static int
ranlib_touch (const char *archname)
{




  int f;
  bfd *arch;
  char **matching;

  if (get_file_size (archname) < 1)
    return 1;
  f = open (archname, O_RDWR | O_BINARY, 0);
  if (f < 0)
    {
      bfd_set_error (bfd_error_system_call);
      bfd_fatal (archname);
    }

  arch = bfd_fdopenr (archname, (const char *) ((void*)0), f);
  if (arch == ((void*)0))
    bfd_fatal (archname);
  if (! bfd_check_format_matches (arch, bfd_archive, &matching))
    {
      bfd_nonfatal (archname);
      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (matching);
   free (matching);
 }
      xexit (1);
    }

  if (! bfd_has_map (arch))

    fatal (_("%s: no archive map to update"), archname);

  bfd_update_armap_timestamp (arch);

  if (! bfd_close (arch))
    bfd_fatal (archname);

  return 0;
}
