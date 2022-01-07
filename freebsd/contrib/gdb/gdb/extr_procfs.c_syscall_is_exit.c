
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int SYS_exit ;
 int find_syscall (int *,char*) ;

__attribute__((used)) static int
syscall_is_exit (procinfo *pi, int scall)
{
  return 0;
}
