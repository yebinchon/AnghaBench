
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct per_cpu_dm_data {int lock; int skb; int send_timer; } ;
struct nlattr {int dummy; } ;
struct net_dm_drop_point {int dummy; } ;
struct net_dm_alert_msg {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 int NET_DM_CMD_ALERT ;
 int NLA_UNSPEC ;
 int dm_hit_limit ;
 struct sk_buff* genlmsg_new (size_t,int ) ;
 int genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ jiffies ;
 int memset (struct net_dm_alert_msg*,int ,size_t) ;
 int mod_timer (int *,scalar_t__) ;
 int net_drop_monitor_family ;
 struct net_dm_alert_msg* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (int ,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *reset_per_cpu_data(struct per_cpu_dm_data *data)
{
 size_t al;
 struct net_dm_alert_msg *msg;
 struct nlattr *nla;
 struct sk_buff *skb;
 unsigned long flags;

 al = sizeof(struct net_dm_alert_msg);
 al += dm_hit_limit * sizeof(struct net_dm_drop_point);
 al += sizeof(struct nlattr);

 skb = genlmsg_new(al, GFP_KERNEL);

 if (skb) {
  genlmsg_put(skb, 0, 0, &net_drop_monitor_family,
    0, NET_DM_CMD_ALERT);
  nla = nla_reserve(skb, NLA_UNSPEC,
      sizeof(struct net_dm_alert_msg));
  msg = nla_data(nla);
  memset(msg, 0, al);
 } else {
  mod_timer(&data->send_timer, jiffies + HZ / 10);
 }

 spin_lock_irqsave(&data->lock, flags);
 swap(data->skb, skb);
 spin_unlock_irqrestore(&data->lock, flags);

 return skb;
}
