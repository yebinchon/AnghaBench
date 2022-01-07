
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int node; int rb_node; } ;
struct machine {int dead_threads; int threads; int * last_match; } ;


 int list_add_tail (int *,int *) ;
 int rb_erase (int *,int *) ;

void machine__remove_thread(struct machine *self, struct thread *th)
{
 self->last_match = ((void*)0);
 rb_erase(&th->rb_node, &self->threads);




 list_add_tail(&th->node, &self->dead_threads);
}
