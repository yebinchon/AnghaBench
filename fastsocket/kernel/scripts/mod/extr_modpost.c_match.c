
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ number_prefix (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 scalar_t__ strrcmp (char const*,char const*) ;

__attribute__((used)) static int match(const char *sym, const char * const pat[])
{
 const char *p;
 while (*pat) {
  p = *pat++;
  const char *endp = p + strlen(p) - 1;


  if (*p == '*') {
   if (strrcmp(sym, p + 1) == 0)
    return 1;
  }

  else if (*endp == '*') {
   if (strncmp(sym, p, strlen(p) - 1) == 0)
    return 1;
  }

  else if (*endp == '$') {
   if (strncmp(sym, p, strlen(p) - 1) == 0) {
    if (number_prefix(sym + strlen(p) - 1))
     return 1;
   }
  }

  else {
   if (strcmp(p, sym) == 0)
    return 1;
  }
 }

 return 0;
}
