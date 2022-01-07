
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int signal; } ;
struct task_struct {TYPE_5__* signal; int blocked; TYPE_1__ pending; } ;
struct seq_file {int dummy; } ;
typedef int sigset_t ;
struct TYPE_12__ {TYPE_3__* user; } ;
struct TYPE_8__ {int signal; } ;
struct TYPE_11__ {TYPE_4__* rlim; int count; TYPE_2__ shared_pending; } ;
struct TYPE_10__ {unsigned long rlim_cur; } ;
struct TYPE_9__ {int sigpending; } ;


 size_t RLIMIT_SIGPENDING ;
 TYPE_6__* __task_cred (struct task_struct*) ;
 void* atomic_read (int *) ;
 int collect_sigign_sigcatch (struct task_struct*,int *,int *) ;
 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 int render_sigset_t (struct seq_file*,char*,int *) ;
 int seq_printf (struct seq_file*,char*,unsigned long,...) ;
 int sigemptyset (int *) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static inline void task_sig(struct seq_file *m, struct task_struct *p)
{
 unsigned long flags;
 sigset_t pending, shpending, blocked, ignored, caught;
 int num_threads = 0;
 unsigned long qsize = 0;
 unsigned long qlim = 0;

 sigemptyset(&pending);
 sigemptyset(&shpending);
 sigemptyset(&blocked);
 sigemptyset(&ignored);
 sigemptyset(&caught);

 if (lock_task_sighand(p, &flags)) {
  pending = p->pending.signal;
  shpending = p->signal->shared_pending.signal;
  blocked = p->blocked;
  collect_sigign_sigcatch(p, &ignored, &caught);
  num_threads = atomic_read(&p->signal->count);
  qsize = atomic_read(&__task_cred(p)->user->sigpending);
  qlim = p->signal->rlim[RLIMIT_SIGPENDING].rlim_cur;
  unlock_task_sighand(p, &flags);
 }

 seq_printf(m, "Threads:\t%d\n", num_threads);
 seq_printf(m, "SigQ:\t%lu/%lu\n", qsize, qlim);


 render_sigset_t(m, "SigPnd:\t", &pending);
 render_sigset_t(m, "ShdPnd:\t", &shpending);
 render_sigset_t(m, "SigBlk:\t", &blocked);
 render_sigset_t(m, "SigIgn:\t", &ignored);
 render_sigset_t(m, "SigCgt:\t", &caught);
}
