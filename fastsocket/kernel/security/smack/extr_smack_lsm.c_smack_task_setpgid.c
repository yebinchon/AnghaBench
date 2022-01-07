
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;


 int MAY_WRITE ;
 int smk_curacc_on_task (struct task_struct*,int ) ;

__attribute__((used)) static int smack_task_setpgid(struct task_struct *p, pid_t pgid)
{
 return smk_curacc_on_task(p, MAY_WRITE);
}
