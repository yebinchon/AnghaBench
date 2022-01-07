
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; struct TYPE_2__* prev; } ;


 TYPE_1__* check_top ;

__attribute__((used)) static void dep_stack_remove(void)
{
 check_top = check_top->prev;
 if (check_top)
  check_top->next = ((void*)0);
}
