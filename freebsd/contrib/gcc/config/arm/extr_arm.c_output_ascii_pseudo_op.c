
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ISPRINT (int) ;
 int MAX_ASCII_LEN ;
 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int putc (int,int *) ;

void
output_ascii_pseudo_op (FILE *stream, const unsigned char *p, int len)
{
  int i;
  int len_so_far = 0;

  fputs ("\t.ascii\t\"", stream);

  for (i = 0; i < len; i++)
    {
      int c = p[i];

      if (len_so_far >= MAX_ASCII_LEN)
 {
   fputs ("\"\n\t.ascii\t\"", stream);
   len_so_far = 0;
 }

      if (ISPRINT (c))
 {
   if (c == '\\' || c == '\"')
     {
       putc ('\\', stream);
       len_so_far++;
     }
   putc (c, stream);
   len_so_far++;
 }
      else
 {
   fprintf (stream, "\\%03o", c);
   len_so_far += 4;
 }
    }

  fputs ("\"\n", stream);
}
