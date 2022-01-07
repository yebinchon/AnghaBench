
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ISSPACE (char) ;
 int fputs (char*,int *) ;
 int putc (char,int *) ;

__attribute__((used)) static void
quoteput (char *s, FILE *f, int needs_quotes)
{
  char *cp;

  for (cp = s; *cp; cp++)
    if (*cp == '\''
 || *cp == '"'
 || *cp == '\\'
 || ISSPACE (*cp)
 || *cp == ','
 || *cp == ';')
      needs_quotes = 1;

  if (needs_quotes)
    {
      putc ('"', f);

      while (*s)
 {
   if (*s == '"' || *s == '\\')
     putc ('\\', f);

   putc (*s, f);
   s++;
 }

      putc ('"', f);
    }
  else
    fputs (s, f);
}
