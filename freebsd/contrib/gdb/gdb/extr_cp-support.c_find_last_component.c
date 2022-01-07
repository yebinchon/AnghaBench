
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static const char *
find_last_component (const char *name)
{
  const char *p;
  int depth;




  p = name + strlen (name) - 1;
  while (p > name && *p != ')')
    p--;

  if (p == name)
    return ((void*)0);



  p--;
  depth = 1;
  while (p > name && depth > 0)
    {
      if (*p == '<' || *p == '(')
 depth--;
      else if (*p == '>' || *p == ')')
 depth++;
      p--;
    }

  if (p == name)
    return ((void*)0);

  while (p > name && *p != ':')
    p--;

  if (p == name || p == name + 1 || p[-1] != ':')
    return ((void*)0);

  return p - 1;
}
