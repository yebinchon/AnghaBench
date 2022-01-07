
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct task_struct* parent; int ptraced; int ptrace_entry; } ;


 int BUG_ON (int) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;

void __ptrace_link(struct task_struct *child, struct task_struct *new_parent)
{
 BUG_ON(!list_empty(&child->ptrace_entry));
 list_add(&child->ptrace_entry, &new_parent->ptraced);
 child->parent = new_parent;
}
