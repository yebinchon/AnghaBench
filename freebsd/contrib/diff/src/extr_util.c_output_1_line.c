
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int expand_tabs ;
 int fprintf (int *,char const*,char const*) ;
 int fwrite (char const*,int,int,int *) ;
 int isprint (unsigned char) ;
 int * outfile ;
 int putc (unsigned char,int *) ;
 size_t tabsize ;

void
output_1_line (char const *base, char const *limit, char const *flag_format,
        char const *line_flag)
{
  if (!expand_tabs)
    fwrite (base, sizeof (char), limit - base, outfile);
  else
    {
      register FILE *out = outfile;
      register unsigned char c;
      register char const *t = base;
      register size_t column = 0;
      size_t tab_size = tabsize;

      while (t < limit)
 switch ((c = *t++))
   {
   case '\t':
     {
       size_t spaces = tab_size - column % tab_size;
       column += spaces;
       do
  putc (' ', out);
       while (--spaces);
     }
     break;

   case '\r':
     putc (c, out);
     if (flag_format && t < limit && *t != '\n')
       fprintf (out, flag_format, line_flag);
     column = 0;
     break;

   case '\b':
     if (column == 0)
       continue;
     column--;
     putc (c, out);
     break;

   default:
     column += isprint (c) != 0;
     putc (c, out);
     break;
   }
    }
}
