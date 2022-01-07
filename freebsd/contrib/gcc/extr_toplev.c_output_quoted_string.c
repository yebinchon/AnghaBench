
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ISPRINT (char) ;
 int OUTPUT_QUOTED_STRING (int *,char const*) ;
 int fprintf (int *,char*,unsigned char) ;
 int putc (char,int *) ;

void
output_quoted_string (FILE *asm_file, const char *string)
{



  char c;

  putc ('\"', asm_file);
  while ((c = *string++) != 0)
    {
      if (ISPRINT (c))
 {
   if (c == '\"' || c == '\\')
     putc ('\\', asm_file);
   putc (c, asm_file);
 }
      else
 fprintf (asm_file, "\\%03o", (unsigned char) c);
    }
  putc ('\"', asm_file);

}
