
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_close (int *) ;
 int bfd_error_no_error ;
 scalar_t__ bfd_error_no_more_archived_files ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int bfd_nonfatal (int ) ;
 int * bfd_openr_next_archived_file (int *,int *) ;
 int bfd_set_error (int ) ;
 int display_bfd (int *) ;
 int return_code ;

__attribute__((used)) static void
display_archive (bfd *file)
{
  bfd *arfile = (bfd *) ((void*)0);
  bfd *last_arfile = (bfd *) ((void*)0);

  for (;;)
    {
      bfd_set_error (bfd_error_no_error);

      arfile = bfd_openr_next_archived_file (file, arfile);
      if (arfile == ((void*)0))
 {
   if (bfd_get_error () != bfd_error_no_more_archived_files)
     {
       bfd_nonfatal (bfd_get_filename (file));
       return_code = 2;
     }
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
