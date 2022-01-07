
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
skip_whitespace (char *p)
{
  while (1)
    {


      if (p[0] == '\n' && p[1] == '\n' && p[2] == '\n')
 return p + 1;
      else if (*p == '\n' || *p == ' ' || *p == '\t')
 p++;
      else if (*p == '#')
 {
   while (*p != '\n')
     p++;
   p++;
 }
      else
 break;
    }

  return p;
}
