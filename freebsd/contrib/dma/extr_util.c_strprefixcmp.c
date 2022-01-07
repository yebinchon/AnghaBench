
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncasecmp (char const*,char const*,int ) ;

int
strprefixcmp(const char *str, const char *prefix)
{
 return (strncasecmp(str, prefix, strlen(prefix)));
}
