
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *
locate_arg (char *p)
{
  while ((p = strchr (p, '$')))
    {
      if (strncmp (p, "$arg", 4) == 0 && isdigit (p[4]))
 return p;
      p++;
    }
  return ((void*)0);
}
