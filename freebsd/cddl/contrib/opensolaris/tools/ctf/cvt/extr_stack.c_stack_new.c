
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_nument; int st_top; void (* st_free ) (void*) ;void* st_data; } ;
typedef TYPE_1__ stk_t ;


 int STACK_SEEDSIZE ;
 void* xmalloc (int) ;

stk_t *
stack_new(void (*freep)(void *))
{
 stk_t *sp;

 sp = xmalloc(sizeof (stk_t));
 sp->st_nument = STACK_SEEDSIZE;
 sp->st_top = -1;
 sp->st_data = xmalloc(sizeof (void *) * sp->st_nument);
 sp->st_free = freep;

 return (sp);
}
