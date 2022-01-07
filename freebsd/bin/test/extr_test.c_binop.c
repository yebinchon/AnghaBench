
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum token { ____Placeholder_token } token ;
 int abort () ;
 int equalf (char const*,char const*) ;
 int intcmp (char const*,char const*) ;
 scalar_t__ nargc ;
 int newerf (char const*,char const*) ;
 int olderf (char const*,char const*) ;
 int strcmp (char const*,char const*) ;
 int syntax (char const*,char*) ;
 char** t_wp ;

__attribute__((used)) static int
binop(enum token n)
{
 const char *opnd1, *op, *opnd2;

 opnd1 = *t_wp;
 op = nargc > 0 ? (--nargc, *++t_wp) : ((void*)0);

 if ((opnd2 = nargc > 0 ? (--nargc, *++t_wp) : ((void*)0)) == ((void*)0))
  syntax(op, "argument expected");

 switch (n) {
 case 131:
  return strcmp(opnd1, opnd2) == 0;
 case 128:
  return strcmp(opnd1, opnd2) != 0;
 case 129:
  return strcmp(opnd1, opnd2) < 0;
 case 130:
  return strcmp(opnd1, opnd2) > 0;
 case 137:
  return intcmp(opnd1, opnd2) == 0;
 case 132:
  return intcmp(opnd1, opnd2) != 0;
 case 136:
  return intcmp(opnd1, opnd2) >= 0;
 case 135:
  return intcmp(opnd1, opnd2) > 0;
 case 134:
  return intcmp(opnd1, opnd2) <= 0;
 case 133:
  return intcmp(opnd1, opnd2) < 0;
 case 139:
  return newerf (opnd1, opnd2);
 case 138:
  return olderf (opnd1, opnd2);
 case 140:
  return equalf (opnd1, opnd2);
 default:
  abort();

 }
}
