
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_top; } ;
typedef TYPE_1__ stk_t ;



int
stack_level(stk_t *sp)
{
 return (sp->st_top + 1);
}
