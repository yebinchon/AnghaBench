
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_serv {struct svc_program* sv_program; } ;
struct svc_program {unsigned int pg_nvers; int pg_name; int pg_prog; TYPE_1__** pg_vers; struct svc_program* pg_next; } ;
struct TYPE_6__ {TYPE_2__* sighand; } ;
struct TYPE_5__ {int siglock; } ;
struct TYPE_4__ {scalar_t__ vs_hidden; } ;


 int TIF_SIGPENDING ;
 int __svc_unregister (int ,unsigned int,int ) ;
 int clear_thread_flag (int ) ;
 TYPE_3__* current ;
 int dprintk (char*,int ,unsigned int) ;
 int recalc_sigpending () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void svc_unregister(const struct svc_serv *serv)
{
 struct svc_program *progp;
 unsigned long flags;
 unsigned int i;

 clear_thread_flag(TIF_SIGPENDING);

 for (progp = serv->sv_program; progp; progp = progp->pg_next) {
  for (i = 0; i < progp->pg_nvers; i++) {
   if (progp->pg_vers[i] == ((void*)0))
    continue;
   if (progp->pg_vers[i]->vs_hidden)
    continue;

   dprintk("svc: attempting to unregister %sv%u\n",
    progp->pg_name, i);
   __svc_unregister(progp->pg_prog, i, progp->pg_name);
  }
 }

 spin_lock_irqsave(&current->sighand->siglock, flags);
 recalc_sigpending();
 spin_unlock_irqrestore(&current->sighand->siglock, flags);
}
