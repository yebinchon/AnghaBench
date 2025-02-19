
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;


 int check_kill_permission (int,struct siginfo*,struct task_struct*) ;
 int do_send_sig_info (int,struct siginfo*,struct task_struct*,int) ;

int group_send_sig_info(int sig, struct siginfo *info, struct task_struct *p)
{
 int ret = check_kill_permission(sig, info, p);

 if (!ret && sig)
  ret = do_send_sig_info(sig, info, p, 1);

 return ret;
}
