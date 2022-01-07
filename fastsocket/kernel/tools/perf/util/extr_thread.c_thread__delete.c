
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct thread* comm; int mg; } ;


 int free (struct thread*) ;
 int map_groups__exit (int *) ;

void thread__delete(struct thread *self)
{
 map_groups__exit(&self->mg);
 free(self->comm);
 free(self);
}
