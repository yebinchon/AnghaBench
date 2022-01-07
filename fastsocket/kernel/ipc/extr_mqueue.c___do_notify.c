
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siginfo {int si_uid; int si_pid; int si_value; int si_code; int si_errno; int si_signo; } ;
struct TYPE_4__ {int sigev_notify; int sigev_signo; int sigev_value; } ;
struct TYPE_3__ {int mq_curmsgs; } ;
struct mqueue_inode_info {int wait_q; int * notify_owner; int notify_cookie; int notify_sock; TYPE_2__ notify; TYPE_1__ attr; } ;


 int NOTIFY_WOKENUP ;



 int SI_MESGQ ;
 int current ;
 int current_uid () ;
 int kill_pid_info (int ,struct siginfo*,int *) ;
 int netlink_sendskb (int ,int ) ;
 int ns_of_pid (int *) ;
 int put_pid (int *) ;
 int set_cookie (int ,int ) ;
 int task_tgid_nr_ns (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void __do_notify(struct mqueue_inode_info *info)
{





 if (info->notify_owner &&
     info->attr.mq_curmsgs == 1) {
  struct siginfo sig_i;
  switch (info->notify.sigev_notify) {
  case 130:
   break;
  case 129:


   sig_i.si_signo = info->notify.sigev_signo;
   sig_i.si_errno = 0;
   sig_i.si_code = SI_MESGQ;
   sig_i.si_value = info->notify.sigev_value;
   sig_i.si_pid = task_tgid_nr_ns(current,
      ns_of_pid(info->notify_owner));
   sig_i.si_uid = current_uid();

   kill_pid_info(info->notify.sigev_signo,
          &sig_i, info->notify_owner);
   break;
  case 128:
   set_cookie(info->notify_cookie, NOTIFY_WOKENUP);
   netlink_sendskb(info->notify_sock, info->notify_cookie);
   break;
  }

  put_pid(info->notify_owner);
  info->notify_owner = ((void*)0);
 }
 wake_up(&info->wait_q);
}
