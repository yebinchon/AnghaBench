
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BINOP ;
 scalar_t__ TOKEN_TYPE (int) ;
 int find_op (char*) ;
 int nargc ;
 int parenlevel ;
 scalar_t__ strcmp (char*,char*) ;
 char** t_wp ;

__attribute__((used)) static int
islparenoperand(void)
{
 char *s;
 int num;

 if (nargc == 1)
  return 1;
 s = *(t_wp + 1);
 if (nargc == 2)
  return parenlevel == 1 && strcmp(s, ")") == 0;
 if (nargc != 3)
  return 0;
 num = find_op(s);
 return TOKEN_TYPE(num) == BINOP;
}
