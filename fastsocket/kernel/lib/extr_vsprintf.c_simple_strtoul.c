
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long simple_strtoull (char const*,char**,unsigned int) ;

unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
{
 return simple_strtoull(cp, endp, base);
}
