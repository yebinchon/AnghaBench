
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arith_t ;


 int ARITH_MAX ;
 int ARITH_MIN ;
 int ERANGE ;
 int errno ;
 scalar_t__ isspace (unsigned char) ;
 int strtoimax (char const*,char**,int ) ;
 int strtoumax (char const*,char**,int ) ;

arith_t
strtoarith_t(const char *restrict nptr, char **restrict endptr)
{
 arith_t val;

 while (isspace((unsigned char)*nptr))
  nptr++;
 switch (*nptr) {
  case '-':
   return strtoimax(nptr, endptr, 0);
  case '0':
   return (arith_t)strtoumax(nptr, endptr, 0);
  default:
   val = (arith_t)strtoumax(nptr, endptr, 0);
   if (val >= 0)
    return val;
   else if (val == ARITH_MIN) {
    errno = ERANGE;
    return ARITH_MIN;
   } else {
    errno = ERANGE;
    return ARITH_MAX;
   }
 }
}
