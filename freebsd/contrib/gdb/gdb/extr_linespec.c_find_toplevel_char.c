
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
find_toplevel_char (char *s, char c)
{
  int quoted = 0;


  int depth = 0;
  char *scan;

  for (scan = s; *scan; scan++)
    {
      if (quoted)
 {
   if (*scan == quoted)
     quoted = 0;
   else if (*scan == '\\' && *(scan + 1))
     scan++;
 }
      else if (*scan == c && ! quoted && depth == 0)
 return scan;
      else if (*scan == '"' || *scan == '\'')
 quoted = *scan;
      else if (*scan == '(' || *scan == '<')
 depth++;
      else if ((*scan == ')' || *scan == '>') && depth > 0)
 depth--;
    }

  return 0;
}
