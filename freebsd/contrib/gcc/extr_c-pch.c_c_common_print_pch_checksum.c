
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int* executable_checksum ;
 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int putc (char,int *) ;

void
c_common_print_pch_checksum (FILE *f)
{
  int i;
  fputs ("Compiler executable checksum: ", f);
  for (i = 0; i < 16; i++)
    fprintf (f, "%02x", executable_checksum[i]);
  putc ('\n', f);
}
