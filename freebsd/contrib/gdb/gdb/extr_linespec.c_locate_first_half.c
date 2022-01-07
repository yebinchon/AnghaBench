
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 char* find_template_name_end (char*) ;
 char* find_toplevel_char (char*,char) ;
 scalar_t__ is_objc_method_format (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
locate_first_half (char **argptr, int *is_quote_enclosed)
{
  char *ii;
  char *p, *p1;
  int has_comma;
  ii = find_toplevel_char (*argptr, ',');
  has_comma = (ii != 0);



  if (has_comma)
    {
      *ii = '\0';
    }





  p = *argptr;
  if (p[0] == '"')
    {
      *is_quote_enclosed = 1;
      (*argptr)++;
      p++;
    }
  else
    *is_quote_enclosed = 0;
  for (; *p; p++)
    {
      if (p[0] == '<')
 {
   char *temp_end = find_template_name_end (p);
   if (!temp_end)
     error ("malformed template specification in command");
   p = temp_end;
 }


      if (is_objc_method_format (p))
 {
   break;
 }




      if (!*p
   || p[0] == '\t'
   || ((p[0] == ':')
       && ((p[1] == ':') || (strchr (p + 1, ':') == ((void*)0))))
   || ((p[0] == ' ') && !*is_quote_enclosed))
 break;
      if (p[0] == '.' && strchr (p, ':') == ((void*)0))
 {


   for (p1 = p; *p1; p1++)
     {
       if (*p1 == '.')
  p = p1;
     }
   break;
 }
    }
  while (p[0] == ' ' || p[0] == '\t')
    p++;


  if (*is_quote_enclosed)
    {
      char *closing_quote = strchr (p - 1, '"');
      if (closing_quote && closing_quote[1] == '\0')
 *closing_quote = '\0';
    }



  if (has_comma)
    *ii = ',';

  return p;
}
