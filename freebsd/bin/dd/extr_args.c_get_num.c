
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int ERANGE ;
 int err (int,char*,int ) ;
 scalar_t__ errno ;
 int errx (int,char*,int ,...) ;
 int oper ;
 int postfix_to_mult (char) ;
 int strerror (int ) ;
 int strtoumax (char const*,char**,int ) ;

__attribute__((used)) static uintmax_t
get_num(const char *val)
{
 uintmax_t num, mult, prevnum;
 char *expr;

 errno = 0;
 num = strtoumax(val, &expr, 0);
 if (expr == val)
  errx(1, "%s: invalid numeric value", oper);
 if (errno != 0)
  err(1, "%s", oper);

 mult = postfix_to_mult(*expr);

 if (mult != 0) {
  prevnum = num;
  num *= mult;

  if (num / mult != prevnum)
   goto erange;
  expr++;
 }

 switch (*expr) {
  case '\0':
   break;
  case '*':
  case 'X':
  case 'x':
   mult = get_num(expr + 1);
   prevnum = num;
   num *= mult;
   if (num / mult == prevnum)
    break;
erange:
   errx(1, "%s: %s", oper, strerror(ERANGE));
  default:
   errx(1, "%s: illegal numeric value", oper);
 }
 return (num);
}
