
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_top; void** st_data; } ;
typedef TYPE_1__ stk_t ;



void *
stack_peek(stk_t *sp)
{
 if (sp->st_top == -1)
  return (((void*)0));

 return (sp->st_data[sp->st_top]);
}
