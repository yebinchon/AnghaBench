
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int comm_set; int mg; scalar_t__ comm; } ;


 int ENOMEM ;
 int MAP__NR_TYPES ;
 int free (scalar_t__) ;
 scalar_t__ map_groups__clone (int *,int *,int) ;
 scalar_t__ strdup (scalar_t__) ;

int thread__fork(struct thread *self, struct thread *parent)
{
 int i;

 if (parent->comm_set) {
  if (self->comm)
   free(self->comm);
  self->comm = strdup(parent->comm);
  if (!self->comm)
   return -ENOMEM;
  self->comm_set = 1;
 }

 for (i = 0; i < MAP__NR_TYPES; ++i)
  if (map_groups__clone(&self->mg, &parent->mg, i) < 0)
   return -ENOMEM;
 return 0;
}
