
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ DBX_DEBUG ;
 scalar_t__ DWARF2_DEBUG ;
 char const* current_function_file ;
 int fprintf (int *,char*,int) ;
 scalar_t__ mips_output_filename_first_time ;
 int num_source_filenames ;
 int output_quoted_string (int *,char const*) ;
 int putc (char,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ write_symbols ;

void
mips_output_filename (FILE *stream, const char *name)
{



  if (write_symbols == DWARF2_DEBUG)
    return;
  else if (mips_output_filename_first_time)
    {
      mips_output_filename_first_time = 0;
      num_source_filenames += 1;
      current_function_file = name;
      fprintf (stream, "\t.file\t%d ", num_source_filenames);
      output_quoted_string (stream, name);
      putc ('\n', stream);
    }



  else if (write_symbols == DBX_DEBUG)
    return;

  else if (name != current_function_file
    && strcmp (name, current_function_file) != 0)
    {
      num_source_filenames += 1;
      current_function_file = name;
      fprintf (stream, "\t.file\t%d ", num_source_filenames);
      output_quoted_string (stream, name);
      putc ('\n', stream);
    }
}
