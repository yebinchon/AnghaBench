
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fatal_expected_char (int *,char,int) ;
 int getc (int *) ;
 int read_rtx_lineno ;

int
read_skip_spaces (FILE *infile)
{
  int c;

  while (1)
    {
      c = getc (infile);
      switch (c)
 {
 case '\n':
   read_rtx_lineno++;
   break;

 case ' ': case '\t': case '\f': case '\r':
   break;

 case ';':
   do
     c = getc (infile);
   while (c != '\n' && c != EOF);
   read_rtx_lineno++;
   break;

 case '/':
   {
     int prevc;
     c = getc (infile);
     if (c != '*')
       fatal_expected_char (infile, '*', c);

     prevc = 0;
     while ((c = getc (infile)) && c != EOF)
       {
  if (c == '\n')
     read_rtx_lineno++;
         else if (prevc == '*' && c == '/')
    break;
         prevc = c;
       }
   }
   break;

 default:
   return c;
 }
    }
}
