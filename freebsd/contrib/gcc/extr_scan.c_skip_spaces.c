
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 int lineno ;
 int source_lineno ;
 int ungetc (int,int *) ;

int
skip_spaces (FILE *fp, int c)
{
  for (;;)
    {
      if (c == ' ' || c == '\t')
 c = getc (fp);
      else if (c == '/')
 {
   c = getc (fp);
   if (c != '*')
     {
       ungetc (c, fp);
       return '/';
     }
   c = getc (fp);
   for (;;)
     {
       if (c == EOF)
  return EOF;
       else if (c != '*')
  {
    if (c == '\n')
      source_lineno++, lineno++;
    c = getc (fp);
  }
       else if ((c = getc (fp)) == '/')
  return getc (fp);
     }
 }
      else
 break;
    }
  return c;
}
