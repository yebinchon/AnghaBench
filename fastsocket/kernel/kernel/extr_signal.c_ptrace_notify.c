
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int si_signo; int si_code; int si_uid; int si_pid; } ;
typedef TYPE_2__ siginfo_t ;
struct TYPE_9__ {TYPE_1__* sighand; } ;
struct TYPE_7__ {int siglock; } ;


 int BUG_ON (int) ;
 int SIGTRAP ;
 TYPE_3__* current ;
 int current_uid () ;
 int memset (TYPE_2__*,int ,int) ;
 int ptrace_stop (int,int,TYPE_2__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid_vnr (TYPE_3__*) ;

void ptrace_notify(int exit_code)
{
 siginfo_t info;

 BUG_ON((exit_code & (0x7f | ~0xffff)) != SIGTRAP);

 memset(&info, 0, sizeof info);
 info.si_signo = SIGTRAP;
 info.si_code = exit_code;
 info.si_pid = task_pid_vnr(current);
 info.si_uid = current_uid();


 spin_lock_irq(&current->sighand->siglock);
 ptrace_stop(exit_code, 1, &info);
 spin_unlock_irq(&current->sighand->siglock);
}
