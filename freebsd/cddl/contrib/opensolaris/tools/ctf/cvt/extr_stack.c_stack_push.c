
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_top; int st_nument; void** st_data; } ;
typedef TYPE_1__ stk_t ;


 scalar_t__ STACK_SEEDSIZE ;
 void** xrealloc (void**,int) ;

void
stack_push(stk_t *sp, void *data)
{
 sp->st_top++;

 if (sp->st_top == sp->st_nument) {
  sp->st_nument += STACK_SEEDSIZE;
  sp->st_data = xrealloc(sp->st_data,
      sizeof (void *) * sp->st_nument);
 }

 sp->st_data[sp->st_top] = data;
}
