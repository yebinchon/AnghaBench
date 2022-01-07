
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;


 int PF_FROZEN ;
 int clear_freeze_flag (struct task_struct*) ;
 scalar_t__ frozen (struct task_struct*) ;

__attribute__((used)) static int __thaw_process(struct task_struct *p)
{
 if (frozen(p)) {
  p->flags &= ~PF_FROZEN;
  return 1;
 }
 clear_freeze_flag(p);
 return 0;
}
