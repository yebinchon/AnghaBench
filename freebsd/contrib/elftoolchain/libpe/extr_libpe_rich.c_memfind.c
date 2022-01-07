
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char const*,size_t) ;

__attribute__((used)) static char *
memfind(char *s, const char *find, size_t slen, size_t flen)
{
 int i;

 if (slen == 0 || flen == 0 || flen > slen)
  return (((void*)0));

 for (i = 0; (size_t) i <= slen - flen; i++) {
  if (s[i] != find[0])
   continue;
  if (flen == 1)
   return (&s[i]);
  if (memcmp(&s[i + 1], &find[1], flen - 1) == 0)
   return (&s[i]);
 }

 return (((void*)0));
}
