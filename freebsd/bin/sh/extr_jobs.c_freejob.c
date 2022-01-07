
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {scalar_t__ cmd; } ;
struct job {int nprocs; scalar_t__ ps; scalar_t__ used; struct procstat ps0; } ;


 int INTOFF ;
 int INTON ;
 struct job* bgjob ;
 int ckfree (scalar_t__) ;
 int deljob (struct job*) ;
 scalar_t__ nullstr ;

__attribute__((used)) static void
freejob(struct job *jp)
{
 struct procstat *ps;
 int i;

 INTOFF;
 if (bgjob == jp)
  bgjob = ((void*)0);
 for (i = jp->nprocs, ps = jp->ps ; --i >= 0 ; ps++) {
  if (ps->cmd != nullstr)
   ckfree(ps->cmd);
 }
 if (jp->ps != &jp->ps0)
  ckfree(jp->ps);
 jp->used = 0;



 INTON;
}
