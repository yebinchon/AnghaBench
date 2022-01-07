
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int personality; } ;


 int ADDR_NO_RANDOMIZE ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned int PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 unsigned int STACK_RND_MASK ;
 TYPE_1__* current ;
 unsigned int get_random_int () ;

__attribute__((used)) static unsigned long randomize_stack_top(unsigned long stack_top)
{
 unsigned int random_variable = 0;

 if ((current->flags & PF_RANDOMIZE) &&
  !(current->personality & ADDR_NO_RANDOMIZE)) {
  random_variable = get_random_int() & STACK_RND_MASK;
  random_variable <<= PAGE_SHIFT;
 }



 return PAGE_ALIGN(stack_top) - random_variable;

}
