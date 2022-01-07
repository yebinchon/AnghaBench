
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gmatch (char const*,char const*) ;

int
dt_gmatch(const char *s, const char *p)
{
 return (p == ((void*)0) || *p == '\0' || gmatch(s, p));
}
