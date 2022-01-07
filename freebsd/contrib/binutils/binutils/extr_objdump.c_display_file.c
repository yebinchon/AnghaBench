
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 char* _ (char*) ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_error_no_error ;
 scalar_t__ bfd_error_no_more_archived_files ;
 scalar_t__ bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int * bfd_openr (char*,char*) ;
 int * bfd_openr_next_archived_file (int *,int *) ;
 int bfd_set_error (int ) ;
 int display_bfd (int *) ;
 int exit_status ;
 int get_file_size (char*) ;
 int nonfatal (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
display_file (char *filename, char *target)
{
  bfd *file;
  bfd *arfile = ((void*)0);

  if (get_file_size (filename) < 1)
    {
      exit_status = 1;
      return;
    }

  file = bfd_openr (filename, target);
  if (file == ((void*)0))
    {
      nonfatal (filename);
      return;
    }


  if (bfd_check_format (file, bfd_archive))
    {
      bfd *last_arfile = ((void*)0);

      printf (_("In archive %s:\n"), bfd_get_filename (file));
      for (;;)
 {
   bfd_set_error (bfd_error_no_error);

   arfile = bfd_openr_next_archived_file (file, arfile);
   if (arfile == ((void*)0))
     {
       if (bfd_get_error () != bfd_error_no_more_archived_files)
  nonfatal (bfd_get_filename (file));
       break;
     }

   display_bfd (arfile);

   if (last_arfile != ((void*)0))
     bfd_close (last_arfile);
   last_arfile = arfile;
 }

      if (last_arfile != ((void*)0))
 bfd_close (last_arfile);
    }
  else
    display_bfd (file);

  bfd_close (file);
}
