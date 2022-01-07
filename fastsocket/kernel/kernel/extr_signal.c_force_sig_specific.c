
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int SEND_SIG_FORCED ;
 int force_sig_info (int,int ,struct task_struct*) ;

void
force_sig_specific(int sig, struct task_struct *t)
{
 force_sig_info(sig, SEND_SIG_FORCED, t);
}
