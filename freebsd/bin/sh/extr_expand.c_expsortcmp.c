
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcoll (char const*,char const*) ;

__attribute__((used)) static int
expsortcmp(const void *p1, const void *p2)
{
 const char *s1 = *(const char * const *)p1;
 const char *s2 = *(const char * const *)p2;

 return (strcoll(s1, s2));
}
