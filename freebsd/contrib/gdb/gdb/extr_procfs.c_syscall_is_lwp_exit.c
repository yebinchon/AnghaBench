
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int SYS_lwp_exit ;
 int SYS_lwpexit ;

__attribute__((used)) static int
syscall_is_lwp_exit (procinfo *pi, int scall)
{
  return 0;
}
