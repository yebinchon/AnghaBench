
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ si_code; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;
typedef scalar_t__ pid_t ;


 long EINVAL ;
 long EPERM ;
 scalar_t__ SI_TKILL ;
 int WARN_ON_ONCE (int) ;
 long do_send_specific (scalar_t__,scalar_t__,int,TYPE_1__*) ;

long do_rt_tgsigqueueinfo(pid_t tgid, pid_t pid, int sig, siginfo_t *info)
{

 if (pid <= 0 || tgid <= 0)
  return -EINVAL;




 if (info->si_code >= 0 || info->si_code == SI_TKILL) {

  WARN_ON_ONCE(info->si_code < 0);
  return -EPERM;
 }
 info->si_signo = sig;

 return do_send_specific(tgid, pid, sig, info);
}
