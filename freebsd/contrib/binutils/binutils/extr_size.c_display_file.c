
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_nonfatal (char*) ;
 int * bfd_openr (char*,int ) ;
 int display_archive (int *) ;
 int display_bfd (int *) ;
 int get_file_size (char*) ;
 int return_code ;
 int target ;

__attribute__((used)) static void
display_file (char *filename)
{
  bfd *file;

  if (get_file_size (filename) < 1)
    {
      return_code = 1;
      return;
    }

  file = bfd_openr (filename, target);
  if (file == ((void*)0))
    {
      bfd_nonfatal (filename);
      return_code = 1;
      return;
    }

  if (bfd_check_format (file, bfd_archive))
    display_archive (file);
  else
    display_bfd (file);

  if (!bfd_close (file))
    {
      bfd_nonfatal (filename);
      return_code = 1;
      return;
    }
}
