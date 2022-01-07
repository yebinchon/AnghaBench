
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* la_word_break_characters ) () ;} ;


 TYPE_1__* current_language ;
 char* gdb_completer_quote_characters ;
 scalar_t__ strchr (char*,char) ;
 char* stub1 () ;

char *
skip_quoted_chars (char *str, char *quotechars, char *breakchars)
{
  char quote_char = '\0';
  char *scan;

  if (quotechars == ((void*)0))
    quotechars = gdb_completer_quote_characters;

  if (breakchars == ((void*)0))
    breakchars = current_language->la_word_break_characters();

  for (scan = str; *scan != '\0'; scan++)
    {
      if (quote_char != '\0')
 {

   if (*scan == quote_char)
     {

       scan++;
       break;
     }
 }
      else if (strchr (quotechars, *scan))
 {

   quote_char = *scan;
 }
      else if (strchr (breakchars, *scan))
 {
   break;
 }
    }

  return (scan);
}
