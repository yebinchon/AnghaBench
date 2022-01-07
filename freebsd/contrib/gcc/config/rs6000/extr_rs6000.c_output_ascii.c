
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char) ;
 int fputs (char const*,int *) ;
 int putc (char,int *) ;

void
output_ascii (FILE *file, const char *p, int n)
{
  char c;
  int i, count_string;
  const char *for_string = "\t.byte \"";
  const char *for_decimal = "\t.byte ";
  const char *to_close = ((void*)0);

  count_string = 0;
  for (i = 0; i < n; i++)
    {
      c = *p++;
      if (c >= ' ' && c < 0177)
 {
   if (for_string)
     fputs (for_string, file);
   putc (c, file);


   if (c == '"')
     {
       putc (c, file);
       ++count_string;
     }

   for_string = ((void*)0);
   for_decimal = "\"\n\t.byte ";
   to_close = "\"\n";
   ++count_string;

   if (count_string >= 512)
     {
       fputs (to_close, file);

       for_string = "\t.byte \"";
       for_decimal = "\t.byte ";
       to_close = ((void*)0);
       count_string = 0;
     }
 }
      else
 {
   if (for_decimal)
     fputs (for_decimal, file);
   fprintf (file, "%d", c);

   for_string = "\n\t.byte \"";
   for_decimal = ", ";
   to_close = "\n";
   count_string = 0;
 }
    }


  if (to_close)
    fputs (to_close, file);
}
