
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;


 int EINVAL ;
 int do_send_sig_info (int,struct siginfo*,struct task_struct*,int) ;
 int valid_signal (int) ;

int
send_sig_info(int sig, struct siginfo *info, struct task_struct *p)
{




 if (!valid_signal(sig))
  return -EINVAL;

 return do_send_sig_info(sig, info, p, 0);
}
