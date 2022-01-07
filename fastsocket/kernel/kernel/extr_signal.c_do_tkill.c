
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {int si_signo; int si_uid; int si_pid; int si_code; scalar_t__ si_errno; } ;
typedef int pid_t ;


 int SI_TKILL ;
 int current ;
 int current_uid () ;
 int do_send_specific (int ,int ,int,struct siginfo*) ;
 int task_tgid_vnr (int ) ;

__attribute__((used)) static int do_tkill(pid_t tgid, pid_t pid, int sig)
{
 struct siginfo info = {};

 info.si_signo = sig;
 info.si_errno = 0;
 info.si_code = SI_TKILL;
 info.si_pid = task_tgid_vnr(current);
 info.si_uid = current_uid();

 return do_send_specific(tgid, pid, sig, &info);
}
