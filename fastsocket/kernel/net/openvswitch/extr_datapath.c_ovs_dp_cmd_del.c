
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct genl_info {int snd_seq; int snd_pid; int attrs; int userhdr; } ;
struct datapath {int sk; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int OVS_DP_CMD_DEL ;
 int PTR_ERR (struct sk_buff*) ;
 int __dp_destroy (struct sk_buff*) ;
 struct sk_buff* lookup_datapath (int ,int ,int ) ;
 struct sk_buff* ovs_dp_cmd_build_info (struct sk_buff*,int ,int ,int ) ;
 int ovs_dp_datapath_multicast_group ;
 int ovs_lock () ;
 int ovs_notify (struct sk_buff*,struct genl_info*,int *) ;
 int ovs_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_dp_cmd_del(struct sk_buff *skb, struct genl_info *info)
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
          info->snd_seq, OVS_DP_CMD_DEL);
 err = PTR_ERR(reply);
 if (IS_ERR(reply))
  goto unlock;

 __dp_destroy(dp);
 ovs_unlock();

 ovs_notify(reply, info, &ovs_dp_datapath_multicast_group);

 return 0;
unlock:
 ovs_unlock();
 return err;
}
