
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ seccomp; } ;


 int BUG () ;
 int SIGKILL ;
 TYPE_2__* current ;
 int do_exit (int ) ;
 int dump_stack () ;
 int is_compat_task () ;
 int* mode1_syscalls ;
 int* mode1_syscalls_32 ;

void __secure_computing(int this_syscall)
{
 int mode = current->seccomp.mode;
 int * syscall;

 switch (mode) {
 case 1:
  syscall = mode1_syscalls;




  do {
   if (*syscall == this_syscall)
    return;
  } while (*++syscall);
  break;
 default:
  BUG();
 }




 do_exit(SIGKILL);
}
