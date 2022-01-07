
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {void (* func ) (unsigned long) ;unsigned long data; int count; scalar_t__ state; int * next; } ;


 int atomic_set (int *,int ) ;

void tasklet_init(struct tasklet_struct *t,
    void (*func)(unsigned long), unsigned long data)
{
 t->next = ((void*)0);
 t->state = 0;
 atomic_set(&t->count, 0);
 t->func = func;
 t->data = data;
}
