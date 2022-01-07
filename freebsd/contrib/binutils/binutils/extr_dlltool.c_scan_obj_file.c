
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int _ (char*) ;
 int bfd_archive ;
 scalar_t__ bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_object ;
 int * bfd_openr (char const*,int ) ;
 int * bfd_openr_next_archived_file (int *,int *) ;
 int fatal (int ,char const*) ;
 int inform (int ,char const*) ;
 int mcore_elf_cache_filename (char*) ;
 scalar_t__ mcore_elf_out_file ;
 int scan_open_obj_file (int *) ;

__attribute__((used)) static void
scan_obj_file (const char *filename)
{
  bfd * f = bfd_openr (filename, 0);

  if (!f)

    fatal (_("Unable to open object file: %s"), filename);


  inform (_("Scanning object file %s"), filename);

  if (bfd_check_format (f, bfd_archive))
    {
      bfd *arfile = bfd_openr_next_archived_file (f, 0);
      while (arfile)
 {
   if (bfd_check_format (arfile, bfd_object))
     scan_open_obj_file (arfile);
   bfd_close (arfile);
   arfile = bfd_openr_next_archived_file (f, arfile);
 }





    }
  else if (bfd_check_format (f, bfd_object))
    {
      scan_open_obj_file (f);





    }

  bfd_close (f);
}
