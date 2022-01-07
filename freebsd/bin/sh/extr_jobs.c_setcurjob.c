
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {struct job* next; } ;


 struct job* jobmru ;

__attribute__((used)) static void
setcurjob(struct job *cj)
{
 struct job *jp, *prev;

 for (prev = ((void*)0), jp = jobmru; jp != ((void*)0); prev = jp, jp = jp->next) {
  if (jp == cj) {
   if (prev != ((void*)0))
    prev->next = jp->next;
   else
    jobmru = jp->next;
   jp->next = jobmru;
   jobmru = cj;
   return;
  }
 }
 cj->next = jobmru;
 jobmru = cj;
}
