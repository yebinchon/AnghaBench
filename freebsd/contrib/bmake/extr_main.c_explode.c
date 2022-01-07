
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bmake_malloc (size_t) ;
 char* bmake_strdup (char const*) ;
 int isalpha (unsigned char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
explode(const char *flags)
{
    size_t len;
    char *nf, *st;
    const char *f;

    if (flags == ((void*)0))
 return ((void*)0);

    for (f = flags; *f; f++)
 if (!isalpha((unsigned char)*f))
     break;

    if (*f)
 return bmake_strdup(flags);

    len = strlen(flags);
    st = nf = bmake_malloc(len * 3 + 1);
    while (*flags) {
 *nf++ = '-';
 *nf++ = *flags++;
 *nf++ = ' ';
    }
    *nf = '\0';
    return st;
}
