
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
SuffStrIsPrefix(const char *pref, const char *str)
{
    while (*str && *pref == *str) {
 pref++;
 str++;
    }

    return (*pref ? ((void*)0) : str);
}
