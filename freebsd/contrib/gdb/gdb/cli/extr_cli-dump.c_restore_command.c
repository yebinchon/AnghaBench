
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {scalar_t__ load_start; scalar_t__ load_end; void* load_offset; } ;
typedef int bfd ;


 int bfd_map_over_sections (int *,int ,struct callback_data*) ;
 int * bfd_openr_with_cleanup (char*,int *) ;
 int error (char*) ;
 scalar_t__ info_verbose ;
 int noprocess () ;
 void* parse_and_eval_long (char*) ;
 int printf_filtered (char*,char*,unsigned long,unsigned long,unsigned long) ;
 int restore_binary_file (char*,struct callback_data*) ;
 int restore_section_callback ;
 char* scan_expression_with_cleanup (char**,int *) ;
 char* scan_filename_with_cleanup (char**,int *) ;
 char* skip_spaces (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int target_has_execution ;

__attribute__((used)) static void
restore_command (char *args, int from_tty)
{
  char *filename;
  struct callback_data data;
  bfd *ibfd;
  int binary_flag = 0;

  if (!target_has_execution)
    noprocess ();

  data.load_offset = 0;
  data.load_start = 0;
  data.load_end = 0;


  filename = scan_filename_with_cleanup (&args, ((void*)0));
  if (args != ((void*)0) && *args != '\0')
    {
      char *binary_string = "binary";


      if (strncmp (args, binary_string, strlen (binary_string)) == 0)
 {
   binary_flag = 1;
   args += strlen (binary_string);
   args = skip_spaces (args);
 }

      if (args != ((void*)0) && *args != '\0')
      data.load_offset =
 parse_and_eval_long (scan_expression_with_cleanup (&args, ((void*)0)));
      if (args != ((void*)0) && *args != '\0')
 {

   data.load_start =
     parse_and_eval_long (scan_expression_with_cleanup (&args, ((void*)0)));
   if (args != ((void*)0) && *args != '\0')
     {

       data.load_end = parse_and_eval_long (args);
       if (data.load_end <= data.load_start)
  error ("Start must be less than end.");
     }
 }
    }

  if (info_verbose)
    printf_filtered ("Restore file %s offset 0x%lx start 0x%lx end 0x%lx\n",
       filename, (unsigned long) data.load_offset,
       (unsigned long) data.load_start,
       (unsigned long) data.load_end);

  if (binary_flag)
    {
      restore_binary_file (filename, &data);
    }
  else
    {

      ibfd = bfd_openr_with_cleanup (filename, ((void*)0));


      bfd_map_over_sections (ibfd, restore_section_callback, &data);
    }
  return;
}
