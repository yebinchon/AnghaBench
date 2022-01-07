
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int define_config (char*,int) ;
 scalar_t__ is_defined_config (char*,int) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,char*) ;
 char tolower (int) ;

__attribute__((used)) static void use_config(char *m, int slen)
{
 char s[PATH_MAX];
 char *p;

 if (is_defined_config(m, slen))
     return;

 define_config(m, slen);

 memcpy(s, m, slen); s[slen] = 0;

 for (p = s; p < s + slen; p++) {
  if (*p == '_')
   *p = '/';
  else
   *p = tolower((int)*p);
 }
 printf("    $(wildcard include/config/%s.h) \\\n", s);
}
