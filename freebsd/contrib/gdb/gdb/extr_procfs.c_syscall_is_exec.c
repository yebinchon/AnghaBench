
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int SYS_exec ;
 int SYS_execv ;
 int SYS_execve ;
 scalar_t__ find_syscall (int *,char*) ;

__attribute__((used)) static int
syscall_is_exec (procinfo *pi, int scall)
{
  return 0;
}
