
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct job {int nprocs; TYPE_1__* ps; int pipefail; } ;
struct TYPE_2__ {int status; } ;



__attribute__((used)) static int getjobstatus(const struct job *jp)
{
 int i, status;

 if (!jp->pipefail)
  return (jp->ps[jp->nprocs - 1].status);
 for (i = jp->nprocs - 1; i >= 0; i--) {
  status = jp->ps[i].status;
  if (status != 0)
   return (status);
 }
 return (0);
}
