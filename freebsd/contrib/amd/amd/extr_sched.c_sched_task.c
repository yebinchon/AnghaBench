
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchan_t ;
struct TYPE_3__ {scalar_t__ w; scalar_t__ pid; int wchan; } ;
typedef TYPE_1__ pjob ;
typedef int opaque_t ;
typedef int cb_fun ;


 int dlog (char*,int ) ;
 TYPE_1__* sched_job (int *,int ) ;

void
sched_task(cb_fun *cf, opaque_t ca, wchan_t wchan)
{



  pjob *p = sched_job(cf, ca);

  dlog("SLEEP on %p", wchan);
  p->wchan = wchan;
  p->pid = 0;
  p->w = 0;
}
