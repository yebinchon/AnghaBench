
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inf {int traced; int pid; TYPE_1__* task; } ;
typedef int sigset_t ;
typedef scalar_t__ error_t ;
struct TYPE_2__ {int dead; } ;


 scalar_t__ EIEIO ;
 scalar_t__ INF_RESUME_MSGPORT_RPC (struct inf*,int ) ;
 int INIT_TRACEMASK ;
 int msg_set_init_int (int ,int ,int ,int ) ;
 int msgport ;
 int refport ;
 char* safe_strerror (scalar_t__) ;
 int warning (char*,int ,char*) ;

void
inf_set_traced (struct inf *inf, int on)
{
  if (on == inf->traced)
    return;

  if (inf->task && !inf->task->dead)

    {
      sigset_t mask = on ? ~(sigset_t) 0 : 0;
      error_t err =
 INF_RESUME_MSGPORT_RPC (inf, msg_set_init_int (msgport, refport,
             INIT_TRACEMASK, mask));
      if (err == EIEIO)
 {
   if (on)
     warning ("Can't modify tracing state for pid %d: %s",
       inf->pid, "No signal thread");
   inf->traced = on;
 }
      else if (err)
 warning ("Can't modify tracing state for pid %d: %s",
   inf->pid, safe_strerror (err));
      else
 inf->traced = on;
    }
  else
    inf->traced = on;
}
