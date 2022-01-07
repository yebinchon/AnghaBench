
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_top; struct TYPE_5__* st_data; int (* st_free ) (TYPE_1__) ;} ;
typedef TYPE_1__ stk_t ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__) ;

void
stack_free(stk_t *sp)
{
 int i;

 if (sp->st_free) {
  for (i = 0; i <= sp->st_top; i++)
   sp->st_free(sp->st_data[i]);
 }
 free(sp->st_data);
 free(sp);
}
