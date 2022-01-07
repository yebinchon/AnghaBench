
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nargc ;
 int parenlevel ;
 scalar_t__ strcmp (char*,char*) ;
 char** t_wp ;

__attribute__((used)) static int
isrparenoperand(void)
{
 char *s;

 if (nargc == 1)
  return 0;
 s = *(t_wp + 1);
 if (nargc == 2)
  return parenlevel == 1 && strcmp(s, ")") == 0;
 return 0;
}
