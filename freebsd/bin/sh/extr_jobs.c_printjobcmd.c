
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {char* cmd; } ;
struct job {int nprocs; struct procstat* ps; } ;


 int out1c (char) ;
 int out1str (char*) ;

__attribute__((used)) static void
printjobcmd(struct job *jp)
{
 struct procstat *ps;
 int i;

 for (ps = jp->ps, i = jp->nprocs ; --i >= 0 ; ps++) {
  out1str(ps->cmd);
  if (i > 0)
   out1str(" | ");
 }
 out1c('\n');
}
