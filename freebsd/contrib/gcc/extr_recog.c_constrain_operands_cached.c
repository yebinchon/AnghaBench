
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int constrain_operands (int) ;
 int which_alternative ;

int
constrain_operands_cached (int strict)
{
  if (which_alternative == -1)
    return constrain_operands (strict);
  else
    return 1;
}
