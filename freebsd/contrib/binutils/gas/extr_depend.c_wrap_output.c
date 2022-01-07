
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAX_COLUMNS ;
 int column ;
 int fprintf (int *,char*) ;
 int putc (int,int *) ;
 int quote_string_for_make (int *,char*) ;

__attribute__((used)) static void
wrap_output (FILE *f, char *string, int spacer)
{
  int len = quote_string_for_make (((void*)0), string);

  if (len == 0)
    return;

  if (column
      && (MAX_COLUMNS
   - 1
   - 2
   < column + len))
    {
      fprintf (f, " \\\n ");
      column = 0;
      if (spacer == ' ')
 spacer = '\0';
    }

  if (spacer == ' ')
    {
      putc (spacer, f);
      ++column;
    }

  quote_string_for_make (f, string);
  column += len;

  if (spacer == ':')
    {
      putc (spacer, f);
      ++column;
    }
}
