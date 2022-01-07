
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef int CORE_ADDR ;


 int EIO ;
 int error_stream (struct ui_file*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fprintf_unfiltered (struct ui_file*,char*) ;
 int make_cleanup_ui_file_delete (struct ui_file*) ;
 struct ui_file* mem_fileopen () ;
 int print_address_numeric (int ,int,struct ui_file*) ;
 int safe_strerror (int) ;

void
memory_error (int status, CORE_ADDR memaddr)
{
  struct ui_file *tmp_stream = mem_fileopen ();
  make_cleanup_ui_file_delete (tmp_stream);

  if (status == EIO)
    {


      fprintf_unfiltered (tmp_stream, "Cannot access memory at address ");
      print_address_numeric (memaddr, 1, tmp_stream);
    }
  else
    {
      fprintf_filtered (tmp_stream, "Error accessing memory address ");
      print_address_numeric (memaddr, 1, tmp_stream);
      fprintf_filtered (tmp_stream, ": %s.",
         safe_strerror (status));
    }

  error_stream (tmp_stream);
}
