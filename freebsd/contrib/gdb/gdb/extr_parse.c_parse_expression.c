
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int dummy; } ;


 int error (char*) ;
 struct expression* parse_exp_1 (char**,int ,int ) ;

struct expression *
parse_expression (char *string)
{
  struct expression *exp;
  exp = parse_exp_1 (&string, 0, 0);
  if (*string)
    error ("Junk after end of expression.");
  return exp;
}
