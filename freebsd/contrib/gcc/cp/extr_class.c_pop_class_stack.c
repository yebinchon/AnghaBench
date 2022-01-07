
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hidden; } ;


 int current_class_depth ;
 TYPE_1__* current_class_stack ;

void
pop_class_stack (void)
{
  if (current_class_depth)
    --current_class_stack[current_class_depth - 1].hidden;
}
