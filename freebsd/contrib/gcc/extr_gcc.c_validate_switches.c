
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* part1; int validated; } ;


 scalar_t__ ISIDNUM (char const) ;
 int SKIP_WHITE () ;
 int n_switches ;
 int strncmp (scalar_t__*,char const*,size_t) ;
 TYPE_1__* switches ;

__attribute__((used)) static const char *
validate_switches (const char *start)
{
  const char *p = start;
  const char *atom;
  size_t len;
  int i;
  bool suffix = 0;
  bool starred = 0;



next_member:
  do { while (*p == ' ' || *p == '\t') p++; } while (0);

  if (*p == '!')
    p++;

  do { while (*p == ' ' || *p == '\t') p++; } while (0);
  if (*p == '.')
    suffix = 1, p++;

  atom = p;
  while (ISIDNUM (*p) || *p == '-' || *p == '+' || *p == '='
  || *p == ',' || *p == '.' || *p == '@')
    p++;
  len = p - atom;

  if (*p == '*')
    starred = 1, p++;

  do { while (*p == ' ' || *p == '\t') p++; } while (0);

  if (!suffix)
    {

      for (i = 0; i < n_switches; i++)
 if (!strncmp (switches[i].part1, atom, len)
     && (starred || switches[i].part1[len] == 0))
   switches[i].validated = 1;
    }

  if (*p) p++;
  if (*p && (p[-1] == '|' || p[-1] == '&'))
    goto next_member;

  if (*p && p[-1] == ':')
    {
      while (*p && *p != ';' && *p != '}')
 {
   if (*p == '%')
     {
       p++;
       if (*p == '{' || *p == '<')
  p = validate_switches (p+1);
       else if (p[0] == 'W' && p[1] == '{')
  p = validate_switches (p+2);
     }
   else
     p++;
 }

      if (*p) p++;
      if (*p && p[-1] == ';')
 goto next_member;
    }

  return p;

}
