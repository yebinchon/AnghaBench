
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct fown_struct {int dummy; } ;


 int SEND_SIG_PRIV ;
 int SIGURG ;
 int do_send_sig_info (int ,int ,struct task_struct*,int) ;
 scalar_t__ sigio_perm (struct task_struct*,struct fown_struct*,int ) ;

__attribute__((used)) static void send_sigurg_to_task(struct task_struct *p,
    struct fown_struct *fown, int group)
{
 if (sigio_perm(p, fown, SIGURG))
  do_send_sig_info(SIGURG, SEND_SIG_PRIV, p, group);
}
