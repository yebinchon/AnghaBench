
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct audit_netlink_list {int pid; int q; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 int audit_cmd_mutex ;
 int audit_sock ;
 int kfree (struct audit_netlink_list*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_unicast (int ,struct sk_buff*,int,int ) ;

int audit_send_list(void *_dest)
{
 struct audit_netlink_list *dest = _dest;
 int pid = dest->pid;
 struct sk_buff *skb;


 mutex_lock(&audit_cmd_mutex);
 mutex_unlock(&audit_cmd_mutex);

 while ((skb = __skb_dequeue(&dest->q)) != ((void*)0))
  netlink_unicast(audit_sock, skb, pid, 0);

 kfree(dest);

 return 0;
}
