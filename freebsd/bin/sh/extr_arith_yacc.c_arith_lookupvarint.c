
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arith_t ;


 scalar_t__ errno ;
 char* lookupvar (char*) ;
 int strtoarith_t (char const*,char**) ;
 scalar_t__ uflag ;
 int yyerror (char*) ;

__attribute__((used)) static arith_t arith_lookupvarint(char *varname)
{
 const char *str;
 char *p;
 arith_t result;

 str = lookupvar(varname);
 if (uflag && str == ((void*)0))
  yyerror("variable not set");
 if (str == ((void*)0) || *str == '\0')
  str = "0";
 errno = 0;
 result = strtoarith_t(str, &p);
 if (errno != 0 || *p != '\0')
  yyerror("variable conversion error");
 return result;
}
