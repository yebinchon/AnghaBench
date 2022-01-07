
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static inline int match_prefix(char *prefix, int plen, char *option, int olen)
{
 if (plen > olen)
  return 0;

 return !memcmp(prefix, option, plen);
}
