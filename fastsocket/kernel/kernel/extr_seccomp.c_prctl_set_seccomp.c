
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long mode; } ;
struct TYPE_4__ {TYPE_1__ seccomp; } ;


 long EINVAL ;
 long EPERM ;
 unsigned long NR_SECCOMP_MODES ;
 int TIF_SECCOMP ;
 TYPE_2__* current ;
 int disable_TSC () ;
 int set_thread_flag (int ) ;
 scalar_t__ unlikely (unsigned long) ;

long prctl_set_seccomp(unsigned long seccomp_mode)
{
 long ret;


 ret = -EPERM;
 if (unlikely(current->seccomp.mode))
  goto out;

 ret = -EINVAL;
 if (seccomp_mode && seccomp_mode <= NR_SECCOMP_MODES) {
  current->seccomp.mode = seccomp_mode;
  set_thread_flag(TIF_SECCOMP);



  ret = 0;
 }

 out:
 return ret;
}
