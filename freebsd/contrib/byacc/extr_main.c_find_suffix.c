
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
find_suffix(char *name, const char *suffix)
{
    size_t len = strlen(name);
    size_t slen = strlen(suffix);
    if (len >= slen)
    {
 name += len - slen;
 if (strcmp(name, suffix) == 0)
     return name;
    }
    return ((void*)0);
}
