
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {struct job* next; } ;


 struct job* jobmru ;

__attribute__((used)) static void
deljob(struct job *j)
{
 struct job *jp, *prev;

 for (prev = ((void*)0), jp = jobmru; jp != ((void*)0); prev = jp, jp = jp->next) {
  if (jp == j) {
   if (prev != ((void*)0))
    prev->next = jp->next;
   else
    jobmru = jp->next;
   return;
  }
 }
}
