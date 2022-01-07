
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {scalar_t__ ip; } ;
struct TYPE_3__ {int comm; } ;


 TYPE_1__* current ;
 scalar_t__ get_user (unsigned char,unsigned char*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int printk (char*,...) ;
 int show_regs (struct pt_regs*) ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static void print_fatal_signal(struct pt_regs *regs, int signr)
{
 printk("%s/%d: potentially unexpected fatal signal %d.\n",
  current->comm, task_pid_nr(current), signr);
 printk("\n");
 preempt_disable();
 show_regs(regs);
 preempt_enable();
}
