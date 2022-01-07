
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_val; } ;


 int check_type_stack_depth () ;
 TYPE_1__* type_stack ;
 int type_stack_depth ;

void
push_type_int (int n)
{
  check_type_stack_depth ();
  type_stack[type_stack_depth++].int_val = n;
}
