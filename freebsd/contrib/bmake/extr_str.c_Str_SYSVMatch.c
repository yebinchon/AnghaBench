
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* UNCONST (char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

char *
Str_SYSVMatch(const char *word, const char *pattern, int *len)
{
    const char *p = pattern;
    const char *w = word;
    const char *m;

    if (*p == '\0') {

 *len = strlen(w);
 return UNCONST(w);
    }

    if ((m = strchr(p, '%')) != ((void*)0)) {

 for (; p != m && *w && *w == *p; w++, p++)
      continue;

 if (p != m)
     return ((void*)0);

 if (*++p == '\0') {

     *len = strlen(w);
     return UNCONST(w);
 }
    }

    m = w;


    do
 if (strcmp(p, w) == 0) {
     *len = w - m;
     return UNCONST(m);
 }
    while (*w++ != '\0');

    return ((void*)0);
}
