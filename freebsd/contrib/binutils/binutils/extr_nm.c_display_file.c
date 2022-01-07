
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int (* print_object_filename ) (char*) ;} ;


 int FALSE ;
 int TRUE ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 scalar_t__ bfd_check_format_matches (int *,int ,char***) ;
 int bfd_close (int *) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_fatal (char*) ;
 scalar_t__ bfd_get_error () ;
 int bfd_nonfatal (char*) ;
 int bfd_object ;
 int * bfd_openr (char*,int ) ;
 int display_archive (int *) ;
 int display_rel_file (int *,int *) ;
 TYPE_1__* format ;
 int free (char**) ;
 int get_file_size (char*) ;
 int * lineno_cache_bfd ;
 int * lineno_cache_rel_bfd ;
 int list_matching_formats (char**) ;
 int set_print_width (int *) ;
 int stub1 (char*) ;
 int target ;

__attribute__((used)) static bfd_boolean
display_file (char *filename)
{
  bfd_boolean retval = TRUE;
  bfd *file;
  char **matching;

  if (get_file_size (filename) < 1)
    return FALSE;

  file = bfd_openr (filename, target);
  if (file == ((void*)0))
    {
      bfd_nonfatal (filename);
      return FALSE;
    }

  if (bfd_check_format (file, bfd_archive))
    {
      display_archive (file);
    }
  else if (bfd_check_format_matches (file, bfd_object, &matching))
    {
      set_print_width (file);
      format->print_object_filename (filename);
      display_rel_file (file, ((void*)0));
    }
  else
    {
      bfd_nonfatal (filename);
      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 {
   list_matching_formats (matching);
   free (matching);
 }
      retval = FALSE;
    }

  if (!bfd_close (file))
    bfd_fatal (filename);

  lineno_cache_bfd = ((void*)0);
  lineno_cache_rel_bfd = ((void*)0);

  return retval;
}
