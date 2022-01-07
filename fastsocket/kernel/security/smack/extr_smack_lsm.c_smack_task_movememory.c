
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int MAY_WRITE ;
 int smk_curacc_on_task (struct task_struct*,int ) ;

__attribute__((used)) static int smack_task_movememory(struct task_struct *p)
{
 return smk_curacc_on_task(p, MAY_WRITE);
}
