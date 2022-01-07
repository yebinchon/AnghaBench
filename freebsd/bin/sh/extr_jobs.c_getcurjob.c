
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {scalar_t__ state; scalar_t__ used; struct job* next; } ;


 scalar_t__ JOBSTOPPED ;
 struct job* jobmru ;

__attribute__((used)) static struct job *
getcurjob(struct job *nj)
{
 struct job *jp;


 for (jp = jobmru; jp != ((void*)0); jp = jp->next)
  if (jp->used && jp != nj && jp->state == JOBSTOPPED)
   return (jp);

 for (jp = jobmru; jp != ((void*)0); jp = jp->next)
  if (jp->used && jp != nj)
   return (jp);

 return (((void*)0));
}
