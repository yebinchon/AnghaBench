
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constraint_expr {scalar_t__ type; scalar_t__ var; scalar_t__ offset; } ;



__attribute__((used)) static bool
constraint_expr_less (struct constraint_expr a, struct constraint_expr b)
{
  if (a.type == b.type)
    {
      if (a.var == b.var)
 return a.offset < b.offset;
      else
 return a.var < b.var;
    }
  else
    return a.type < b.type;
}
