
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PROCESS__GETSESSION ;
 int current_has_perm (struct task_struct*,int ) ;

__attribute__((used)) static int selinux_task_getsid(struct task_struct *p)
{
 return current_has_perm(p, PROCESS__GETSESSION);
}
