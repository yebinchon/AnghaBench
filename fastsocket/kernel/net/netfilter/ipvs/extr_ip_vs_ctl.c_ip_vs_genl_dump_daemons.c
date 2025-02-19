
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;


 int IP_VS_STATE_BACKUP ;
 int IP_VS_STATE_MASTER ;
 int __ip_vs_mutex ;
 int ip_vs_backup_mcast_ifn ;
 int ip_vs_backup_syncid ;
 scalar_t__ ip_vs_genl_dump_daemon (struct sk_buff*,int,int ,int ,struct netlink_callback*) ;
 int ip_vs_master_mcast_ifn ;
 int ip_vs_master_syncid ;
 int ip_vs_sync_state ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ip_vs_genl_dump_daemons(struct sk_buff *skb,
       struct netlink_callback *cb)
{
 mutex_lock(&__ip_vs_mutex);
 if ((ip_vs_sync_state & IP_VS_STATE_MASTER) && !cb->args[0]) {
  if (ip_vs_genl_dump_daemon(skb, IP_VS_STATE_MASTER,
        ip_vs_master_mcast_ifn,
        ip_vs_master_syncid, cb) < 0)
   goto nla_put_failure;

  cb->args[0] = 1;
 }

 if ((ip_vs_sync_state & IP_VS_STATE_BACKUP) && !cb->args[1]) {
  if (ip_vs_genl_dump_daemon(skb, IP_VS_STATE_BACKUP,
        ip_vs_backup_mcast_ifn,
        ip_vs_backup_syncid, cb) < 0)
   goto nla_put_failure;

  cb->args[1] = 1;
 }

nla_put_failure:
 mutex_unlock(&__ip_vs_mutex);

 return skb->len;
}
