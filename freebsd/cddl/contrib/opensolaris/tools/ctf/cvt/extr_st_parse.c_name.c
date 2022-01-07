
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char) ;
 scalar_t__ isalpha (char) ;
 int reset () ;
 scalar_t__ strchr (char*,char) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
name(char *cp, char **w)
{
 char *new, *orig, c;
 int len;

 orig = cp;
 c = *cp++;
 if (c == ':')
  *w = ((void*)0);
 else if (isalpha(c) || strchr("_.$#", c)) {
  for (c = *cp++; isalnum(c) || strchr(" _.$#", c); c = *cp++)
   ;
  if (c != ':')
   reset();
  len = cp - orig;
  new = xmalloc(len);
  while (orig < cp - 1)
   *new++ = *orig++;
  *new = '\0';
  *w = new - (len - 1);
 } else
  reset();

 return (cp);
}
