
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ASM_OUTPUT_SOURCE_FILENAME (int *,char const*) ;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int fprintf (int *,char*) ;
 int fputc (char,int *) ;
 int output_quoted_string (int *,char const*) ;
 int strlen (char const*) ;

void
output_file_directive (FILE *asm_file, const char *input_name)
{
  int len;
  const char *na;

  if (input_name == ((void*)0))
    input_name = "<stdin>";

  len = strlen (input_name);
  na = input_name + len;


  while (na > input_name)
    {
      if (IS_DIR_SEPARATOR (na[-1]))
 break;
      na--;
    }




  fprintf (asm_file, "\t.file\t");
  output_quoted_string (asm_file, na);
  fputc ('\n', asm_file);

}
