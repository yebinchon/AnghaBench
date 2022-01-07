
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ip_vs_sync_thread_data {struct ip_vs_sync_thread_data* buf; TYPE_2__* sock; } ;
struct TYPE_5__ {TYPE_1__* sk; } ;
struct TYPE_4__ {int sk_receive_queue; int * sk_sleep; } ;


 int ip_vs_backup_mcast_ifn ;
 int ip_vs_backup_syncid ;
 int ip_vs_process_message (struct ip_vs_sync_thread_data*,int) ;
 int ip_vs_receive (TYPE_2__*,struct ip_vs_sync_thread_data*,int ) ;
 int kfree (struct ip_vs_sync_thread_data*) ;
 scalar_t__ kthread_should_stop () ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ) ;
 int skb_queue_empty (int *) ;
 int sock_release (TYPE_2__*) ;
 int sync_recv_mesg_maxlen ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int sync_thread_backup(void *data)
{
 struct ip_vs_sync_thread_data *tinfo = data;
 int len;

 pr_info("sync thread started: state = BACKUP, mcast_ifn = %s, "
  "syncid = %d\n",
  ip_vs_backup_mcast_ifn, ip_vs_backup_syncid);

 while (!kthread_should_stop()) {
  wait_event_interruptible(*tinfo->sock->sk->sk_sleep,
    !skb_queue_empty(&tinfo->sock->sk->sk_receive_queue)
    || kthread_should_stop());


  while (!skb_queue_empty(&(tinfo->sock->sk->sk_receive_queue))) {
   len = ip_vs_receive(tinfo->sock, tinfo->buf,
     sync_recv_mesg_maxlen);
   if (len <= 0) {
    pr_err("receiving message error\n");
    break;
   }



   local_bh_disable();
   ip_vs_process_message(tinfo->buf, len);
   local_bh_enable();
  }
 }


 sock_release(tinfo->sock);
 kfree(tinfo->buf);
 kfree(tinfo);

 return 0;
}
