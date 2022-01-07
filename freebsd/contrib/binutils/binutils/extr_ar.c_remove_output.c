
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_cache_close (int *) ;
 int fclose (int *) ;
 int * output_bfd ;
 int * output_file ;
 int * output_filename ;
 int unlink_if_ordinary (int *) ;

__attribute__((used)) static void
remove_output (void)
{
  if (output_filename != ((void*)0))
    {
      if (output_bfd != ((void*)0))
 bfd_cache_close (output_bfd);
      if (output_file != ((void*)0))
 fclose (output_file);
      unlink_if_ordinary (output_filename);
    }
}
