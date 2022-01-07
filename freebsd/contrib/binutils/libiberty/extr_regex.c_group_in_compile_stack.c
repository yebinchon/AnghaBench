
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ regnum_t ;
struct TYPE_5__ {int avail; TYPE_1__* stack; } ;
typedef TYPE_2__ compile_stack_type ;
typedef int boolean ;
struct TYPE_4__ {scalar_t__ regnum; } ;



__attribute__((used)) static boolean
group_in_compile_stack (compile_stack_type compile_stack, regnum_t regnum)
{
  int this_element;

  for (this_element = compile_stack.avail - 1;
       this_element >= 0;
       this_element--)
    if (compile_stack.stack[this_element].regnum == regnum)
      return 1;

  return 0;
}
