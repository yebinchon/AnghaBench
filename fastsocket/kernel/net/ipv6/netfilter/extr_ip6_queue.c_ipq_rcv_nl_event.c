
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct netlink_notify {scalar_t__ protocol; scalar_t__ pid; int * net; } ;


 scalar_t__ NETLINK_IP6_FW ;
 unsigned long NETLINK_URELEASE ;
 int NOTIFY_DONE ;
 int __ipq_reset () ;
 int init_net ;
 scalar_t__ peer_pid ;
 int queue_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int
ipq_rcv_nl_event(struct notifier_block *this,
   unsigned long event, void *ptr)
{
 struct netlink_notify *n = ptr;

 if (event == NETLINK_URELEASE &&
     n->protocol == NETLINK_IP6_FW && n->pid) {
  write_lock_bh(&queue_lock);
  if ((n->net == &init_net) && (n->pid == peer_pid))
   __ipq_reset();
  write_unlock_bh(&queue_lock);
 }
 return NOTIFY_DONE;
}
