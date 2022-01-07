
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int putc (char,int *) ;

__attribute__((used)) static int
quote_string_for_make (FILE *file, char *src)
{
  char *p = src;
  int i = 0;

  for (;;)
    {
      char c = *p++;

      switch (c)
 {
 case '\0':
 case ' ':
 case '\t':
   {






     char *q;

     for (q = p - 1; src < q && q[-1] == '\\'; q--)
       {
  if (file)
    putc ('\\', file);
  i++;
       }
   }
   if (!c)
     return i;
   if (file)
     putc ('\\', file);
   i++;
   goto ordinary_char;

 case '$':
   if (file)
     putc (c, file);
   i++;


 default:
 ordinary_char:





   if (file)
     putc (c, file);
   i++;
   break;
 }
    }
}
