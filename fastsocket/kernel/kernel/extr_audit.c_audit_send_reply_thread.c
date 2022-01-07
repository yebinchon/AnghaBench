
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_reply {int pid; int skb; } ;


 int audit_cmd_mutex ;
 int audit_sock ;
 int kfree (struct audit_reply*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_unicast (int ,int ,int ,int ) ;

__attribute__((used)) static int audit_send_reply_thread(void *arg)
{
 struct audit_reply *reply = (struct audit_reply *)arg;

 mutex_lock(&audit_cmd_mutex);
 mutex_unlock(&audit_cmd_mutex);



 netlink_unicast(audit_sock, reply->skb, reply->pid, 0);
 kfree(reply);
 return 0;
}
