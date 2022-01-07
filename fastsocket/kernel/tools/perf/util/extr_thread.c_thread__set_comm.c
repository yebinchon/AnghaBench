
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int comm_set; int * comm; } ;


 int ENOMEM ;
 int free (int *) ;
 int * strdup (char const*) ;

int thread__set_comm(struct thread *self, const char *comm)
{
 int err;

 if (self->comm)
  free(self->comm);
 self->comm = strdup(comm);
 err = self->comm == ((void*)0) ? -ENOMEM : 0;
 if (!err) {
  self->comm_set = 1;
 }
 return err;
}
