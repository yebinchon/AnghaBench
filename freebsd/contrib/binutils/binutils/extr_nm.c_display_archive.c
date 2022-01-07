
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {int (* print_archive_member ) (int ,int ) ;int (* print_archive_filename ) (int ) ;} ;


 int PROGRESS (int) ;
 scalar_t__ bfd_check_format_matches (int *,int ,char***) ;
 int bfd_close (int *) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 scalar_t__ bfd_error_no_more_archived_files ;
 int bfd_fatal (int ) ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int bfd_nonfatal (int ) ;
 int bfd_object ;
 int * bfd_openr_next_archived_file (int *,int *) ;
 int display_rel_file (int *,int *) ;
 TYPE_1__* format ;
 int free (char**) ;
 int * lineno_cache_bfd ;
 int * lineno_cache_rel_bfd ;
 int list_matching_formats (char**) ;
 scalar_t__ print_armap ;
 int print_symdef_entry (int *) ;
 int set_print_width (int *) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void
display_archive (bfd *file)
{
  bfd *arfile = ((void*)0);
  bfd *last_arfile = ((void*)0);
  char **matching;

  format->print_archive_filename (bfd_get_filename (file));

  if (print_armap)
    print_symdef_entry (file);

  for (;;)
    {
      PROGRESS (1);

      arfile = bfd_openr_next_archived_file (file, arfile);

      if (arfile == ((void*)0))
 {
   if (bfd_get_error () != bfd_error_no_more_archived_files)
     bfd_fatal (bfd_get_filename (file));
   break;
 }

      if (bfd_check_format_matches (arfile, bfd_object, &matching))
 {
   set_print_width (arfile);
   format->print_archive_member (bfd_get_filename (file),
     bfd_get_filename (arfile));
   display_rel_file (arfile, file);
 }
      else
 {
   bfd_nonfatal (bfd_get_filename (arfile));
   if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
     {
       list_matching_formats (matching);
       free (matching);
     }
 }

      if (last_arfile != ((void*)0))
 {
   bfd_close (last_arfile);
   lineno_cache_bfd = ((void*)0);
   lineno_cache_rel_bfd = ((void*)0);
 }
      last_arfile = arfile;
    }

  if (last_arfile != ((void*)0))
    {
      bfd_close (last_arfile);
      lineno_cache_bfd = ((void*)0);
      lineno_cache_rel_bfd = ((void*)0);
    }
}
