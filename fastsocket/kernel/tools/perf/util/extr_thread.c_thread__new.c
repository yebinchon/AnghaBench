
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int pid; scalar_t__ comm; int mg; } ;
typedef int pid_t ;


 scalar_t__ malloc (int) ;
 int map_groups__init (int *) ;
 int snprintf (scalar_t__,int,char*,int) ;
 struct thread* zalloc (int) ;

struct thread *thread__new(pid_t pid)
{
 struct thread *self = zalloc(sizeof(*self));

 if (self != ((void*)0)) {
  map_groups__init(&self->mg);
  self->pid = pid;
  self->comm = malloc(32);
  if (self->comm)
   snprintf(self->comm, 32, ":%d", self->pid);
 }

 return self;
}
