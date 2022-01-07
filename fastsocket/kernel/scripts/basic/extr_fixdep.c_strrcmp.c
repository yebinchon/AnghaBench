
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int strrcmp(char *s, char *sub)
{
 int slen = strlen(s);
 int sublen = strlen(sub);

 if (sublen > slen)
  return 1;

 return memcmp(s + slen - sublen, sub, sublen);
}
