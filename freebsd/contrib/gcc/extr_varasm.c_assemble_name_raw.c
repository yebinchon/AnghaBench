
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ASM_OUTPUT_LABELREF (int *,char const*) ;
 int fputs (char const*,int *) ;

void
assemble_name_raw (FILE *file, const char *name)
{
  if (name[0] == '*')
    fputs (&name[1], file);
  else
    ASM_OUTPUT_LABELREF (file, name);
}
