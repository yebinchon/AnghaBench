
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ bucket ;


 int FREE (TYPE_1__*) ;
 TYPE_1__* first_symbol ;

void
free_symbols(void)
{
    bucket *p, *q;

    for (p = first_symbol; p; p = q)
    {
 q = p->next;
 FREE(p);
    }
}
