
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int astd_task ;
 int kthread_stop (int ) ;

void dlm_astd_stop(void)
{
 kthread_stop(astd_task);
}
