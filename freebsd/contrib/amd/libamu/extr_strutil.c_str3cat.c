
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ xrealloc (char*,int) ;

char *
str3cat(char *p, char *s1, char *s2, char *s3)
{
  int l1 = strlen(s1);
  int l2 = strlen(s2);
  int l3 = strlen(s3);

  p = (char *) xrealloc(p, l1 + l2 + l3 + 1);
  memmove(p, s1, l1);
  memmove(p + l1, s2, l2);
  memmove(p + l1 + l2, s3, l3 + 1);
  return p;
}
