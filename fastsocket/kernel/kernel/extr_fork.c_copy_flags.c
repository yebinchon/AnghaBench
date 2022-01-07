
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long flags; } ;


 unsigned long PF_FORKNOEXEC ;
 unsigned long PF_STARTING ;
 unsigned long PF_SUPERPRIV ;
 int clear_freeze_flag (struct task_struct*) ;

__attribute__((used)) static void copy_flags(unsigned long clone_flags, struct task_struct *p)
{
 unsigned long new_flags = p->flags;

 new_flags &= ~PF_SUPERPRIV;
 new_flags |= PF_FORKNOEXEC;
 new_flags |= PF_STARTING;
 p->flags = new_flags;
 clear_freeze_flag(p);
}
