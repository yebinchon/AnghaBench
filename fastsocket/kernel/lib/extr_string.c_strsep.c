
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char*,char const*) ;

char *strsep(char **s, const char *ct)
{
 char *sbegin = *s;
 char *end;

 if (sbegin == ((void*)0))
  return ((void*)0);

 end = strpbrk(sbegin, ct);
 if (end)
  *end++ = '\0';
 *s = end;
 return sbegin;
}
