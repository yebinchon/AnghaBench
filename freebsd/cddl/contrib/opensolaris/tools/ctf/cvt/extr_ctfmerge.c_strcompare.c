
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
strcompare(const void *p1, const void *p2)
{
 char *s1 = *((char **)p1);
 char *s2 = *((char **)p2);

 return (strcmp(s1, s2));
}
