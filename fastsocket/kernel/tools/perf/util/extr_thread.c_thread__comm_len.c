
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int comm_len; int comm; } ;


 int strlen (int ) ;

int thread__comm_len(struct thread *self)
{
 if (!self->comm_len) {
  if (!self->comm)
   return 0;
  self->comm_len = strlen(self->comm);
 }

 return self->comm_len;
}
