
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* base; } ;


 int EOF ;
 int INF_GET () ;
 int INF_UNGET (int) ;
 scalar_t__ SSTRING_LENGTH (TYPE_1__*) ;
 TYPE_1__ buf ;
 int inf_read_upto (TYPE_1__*,char) ;
 int inf_scan_ident (TYPE_1__*,int) ;
 int inf_skip_spaces (char) ;
 int lineno ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 char* xstrdup (scalar_t__*) ;

__attribute__((used)) static int
check_protection (int *ifndef_line, int *endif_line)
{
  int c;
  int if_nesting = 1;
  char *protect_name = ((void*)0);
  int define_seen = 0;


  for (;; lineno++)
    {
      c = inf_skip_spaces (' ');
      if (c == EOF)
 return 0;
      if (c != '\n')
 break;
    }
  if (c != '#')
    return 0;
  c = inf_scan_ident (&buf, inf_skip_spaces (' '));
  if (SSTRING_LENGTH (&buf) == 0 || strcmp (buf.base, "ifndef") != 0)
    return 0;


  *ifndef_line = lineno;
  c = inf_scan_ident (&buf, inf_skip_spaces (c));
  if (SSTRING_LENGTH (&buf) == 0 || c == EOF)
    return 0;
  protect_name = xstrdup (buf.base);

  (void) INF_UNGET (c);
  c = inf_read_upto (&buf, '\n');
  if (c == EOF)
    return 0;
  lineno++;

  for (;;)
    {
      c = inf_skip_spaces (' ');
      if (c == EOF)
 return 0;
      if (c == '\n')
 {
   lineno++;
   continue;
 }
      if (c != '#')
 goto skip_to_eol;
      c = inf_scan_ident (&buf, inf_skip_spaces (' '));
      if (SSTRING_LENGTH (&buf) == 0)
 ;
      else if (!strcmp (buf.base, "ifndef")
   || !strcmp (buf.base, "ifdef") || !strcmp (buf.base, "if"))
 {
   if_nesting++;
 }
      else if (!strcmp (buf.base, "endif"))
 {
   if_nesting--;
   if (if_nesting == 0)
     break;
 }
      else if (!strcmp (buf.base, "else"))
 {
   if (if_nesting == 1)
     return 0;
 }
      else if (!strcmp (buf.base, "define"))
 {
   c = inf_skip_spaces (c);
   c = inf_scan_ident (&buf, c);
   if (buf.base[0] > 0 && strcmp (buf.base, protect_name) == 0)
     define_seen = 1;
 }
    skip_to_eol:
      for (;;)
 {
   if (c == '\n' || c == EOF)
     break;
   c = INF_GET ();
 }
      if (c == EOF)
 return 0;
      lineno++;
    }

  if (!define_seen)
     return 0;
  *endif_line = lineno;

  for (;;)
    {
      c = inf_skip_spaces (' ');
      if (c == EOF)
 break;
      if (c != '\n')
 return 0;
    }

  return 1;
}
