
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (void const*) ;
 char* xblobdup (void const*,scalar_t__) ;

char *
xstrdup(const void *src)
{
 return xblobdup(src, strlen(src) + 1);
}
