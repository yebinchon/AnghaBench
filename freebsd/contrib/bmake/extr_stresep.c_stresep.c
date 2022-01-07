
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,size_t) ;
 int strlen (char*) ;

char *
stresep(char **stringp, const char *delim, int esc)
{
 char *s;
 const char *spanp;
 int c, sc;
 size_t l;
 char *tok;

 if (stringp == ((void*)0) || delim == ((void*)0))
  return ((void*)0);

 if ((s = *stringp) == ((void*)0))
  return ((void*)0);
 l = strlen(s) + 1;
 for (tok = s;;) {
  c = *s++;
  l--;
  while (esc != '\0' && c == esc) {
   memmove(s - 1, s, l);
   c = *s++;
   l--;
  }
  spanp = delim;
  do {
   if ((sc = *spanp++) == c) {
    if (c == '\0')
     s = ((void*)0);
    else
     s[-1] = '\0';
    *stringp = s;
    return tok;
   }
  } while (sc != '\0');
 }
}
