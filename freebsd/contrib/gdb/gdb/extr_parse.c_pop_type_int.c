
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_val; } ;


 TYPE_1__* type_stack ;
 int type_stack_depth ;

int
pop_type_int (void)
{
  if (type_stack_depth)
    return type_stack[--type_stack_depth].int_val;

  return 0;
}
