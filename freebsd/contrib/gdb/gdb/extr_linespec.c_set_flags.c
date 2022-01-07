
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_gdb_completer_quote_characters () ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
set_flags (char *arg, int *is_quoted, char **paren_pointer)
{
  char *ii;
  int has_if = 0;




  if ((ii = strstr (arg, " if ")) != ((void*)0) ||
      (ii = strstr (arg, "\tif ")) != ((void*)0) ||
      (ii = strstr (arg, " if\t")) != ((void*)0) ||
      (ii = strstr (arg, "\tif\t")) != ((void*)0) ||
      (ii = strstr (arg, " if(")) != ((void*)0) ||
      (ii = strstr (arg, "\tif( ")) != ((void*)0))
    has_if = 1;



  if (has_if)
    {
      *ii = '\0';
    }

  *is_quoted = (*arg
  && strchr (get_gdb_completer_quote_characters (),
      *arg) != ((void*)0));

  *paren_pointer = strchr (arg, '(');
  if (*paren_pointer != ((void*)0))
    *paren_pointer = strrchr (*paren_pointer, ')');



  if (has_if)
    *ii = ' ';
}
