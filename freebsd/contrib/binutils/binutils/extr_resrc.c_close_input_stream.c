
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISTREAM_FILE ;
 int * cpp_pipe ;
 int * cpp_temp_file ;
 int errno ;
 int fclose (int *) ;
 int free (int *) ;
 scalar_t__ istream_type ;
 int pclose (int *) ;
 int unlink (int *) ;

__attribute__((used)) static void
close_input_stream (void)
{
  if (istream_type == ISTREAM_FILE)
    {
      if (cpp_pipe != ((void*)0))
 fclose (cpp_pipe);

      if (cpp_temp_file != ((void*)0))
 {
   int errno_save = errno;

   unlink (cpp_temp_file);
   errno = errno_save;
   free (cpp_temp_file);
 }
    }
  else
    {
      if (cpp_pipe != ((void*)0))
 pclose (cpp_pipe);
    }


  cpp_pipe = ((void*)0);
  cpp_temp_file = ((void*)0);
}
