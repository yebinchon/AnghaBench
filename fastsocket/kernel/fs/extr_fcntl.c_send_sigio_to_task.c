
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct fown_struct {int signum; } ;
struct TYPE_4__ {int si_signo; int si_code; long si_band; int si_fd; int si_errno; } ;
typedef TYPE_1__ siginfo_t ;


 int ACCESS_ONCE (int ) ;
 int BUG_ON (int) ;
 int NSIGPOLL ;
 int POLL_IN ;
 TYPE_1__* SEND_SIG_PRIV ;
 int SIGIO ;
 int __SI_MASK ;
 int __SI_POLL ;
 long* band_table ;
 int do_send_sig_info (int,TYPE_1__*,struct task_struct*,int) ;
 int sigio_perm (struct task_struct*,struct fown_struct*,int) ;

__attribute__((used)) static void send_sigio_to_task(struct task_struct *p,
          struct fown_struct *fown,
          int fd, int reason, int group)
{




 int signum = ACCESS_ONCE(fown->signum);

 if (!sigio_perm(p, fown, signum))
  return;

 switch (signum) {
  siginfo_t si;
  default:






   si.si_signo = signum;
   si.si_errno = 0;
          si.si_code = reason;



   BUG_ON((reason & __SI_MASK) != __SI_POLL);
   if (reason - POLL_IN >= NSIGPOLL)
    si.si_band = ~0L;
   else
    si.si_band = band_table[reason - POLL_IN];
   si.si_fd = fd;
   if (!do_send_sig_info(signum, &si, p, group))
    break;

  case 0:
   do_send_sig_info(SIGIO, SEND_SIG_PRIV, p, group);
 }
}
