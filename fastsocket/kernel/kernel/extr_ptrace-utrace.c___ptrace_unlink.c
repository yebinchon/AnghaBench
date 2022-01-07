
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int ptrace_entry; int real_parent; int parent; scalar_t__ ptrace; } ;


 int BUG_ON (int) ;
 int arch_ptrace_untrace (struct task_struct*) ;
 int list_del_init (int *) ;

void __ptrace_unlink(struct task_struct *child)
{
 BUG_ON(!child->ptrace);

 child->ptrace = 0;
 child->parent = child->real_parent;
 list_del_init(&child->ptrace_entry);

 arch_ptrace_untrace(child);
}
