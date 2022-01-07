
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct genl_info {int snd_seq; int snd_pid; int attrs; int userhdr; } ;
struct datapath {int sk; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int genl_sock; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int OVS_DP_CMD_NEW ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* lookup_datapath (TYPE_1__*,int ,int ) ;
 int netlink_set_err (int ,int ,int ,int) ;
 struct sk_buff* ovs_dp_cmd_build_info (struct sk_buff*,int ,int ,int ) ;
 TYPE_2__ ovs_dp_datapath_multicast_group ;
 int ovs_lock () ;
 int ovs_notify (struct sk_buff*,struct genl_info*,TYPE_2__*) ;
 int ovs_unlock () ;
 TYPE_1__* sock_net (int ) ;

__attribute__((used)) static int ovs_dp_cmd_set(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *reply;
 struct datapath *dp;
 int err;

 ovs_lock();
 dp = lookup_datapath(sock_net(skb->sk), info->userhdr, info->attrs);
 err = PTR_ERR(dp);
 if (IS_ERR(dp))
  goto unlock;

 reply = ovs_dp_cmd_build_info(dp, info->snd_pid,
          info->snd_seq, OVS_DP_CMD_NEW);
 if (IS_ERR(reply)) {
  err = PTR_ERR(reply);
  netlink_set_err(sock_net(skb->sk)->genl_sock, 0,
    ovs_dp_datapath_multicast_group.id, err);
  err = 0;
  goto unlock;
 }

 ovs_unlock();
 ovs_notify(reply, info, &ovs_dp_datapath_multicast_group);

 return 0;
unlock:
 ovs_unlock();
 return err;
}
