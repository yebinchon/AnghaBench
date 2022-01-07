
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ action ;


 int FREE (TYPE_1__*) ;

__attribute__((used)) static void
free_action_row(action *p)
{
    action *q;

    while (p)
    {
 q = p->next;
 FREE(p);
 p = q;
    }
}
