
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __si_special (int) ;
 int send_sig_info (int,int ,struct task_struct*) ;

int
send_sig(int sig, struct task_struct *p, int priv)
{
 return send_sig_info(sig, __si_special(priv), p);
}
