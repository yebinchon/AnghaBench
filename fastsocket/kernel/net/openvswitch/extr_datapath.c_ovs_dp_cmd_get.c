
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct genl_info {int snd_seq; int snd_pid; int attrs; int userhdr; } ;
struct datapath {int sk; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 int OVS_DP_CMD_NEW ;
 int PTR_ERR (struct sk_buff*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 struct sk_buff* lookup_datapath (int ,int ,int ) ;
 struct sk_buff* ovs_dp_cmd_build_info (struct sk_buff*,int ,int ,int ) ;
 int ovs_lock () ;
 int ovs_unlock () ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_dp_cmd_get(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *reply;
 struct datapath *dp;
 int err;

 ovs_lock();
 dp = lookup_datapath(sock_net(skb->sk), info->userhdr, info->attrs);
 if (IS_ERR(dp)) {
  err = PTR_ERR(dp);
  goto unlock;
 }

 reply = ovs_dp_cmd_build_info(dp, info->snd_pid,
          info->snd_seq, OVS_DP_CMD_NEW);
 if (IS_ERR(reply)) {
  err = PTR_ERR(reply);
  goto unlock;
 }

 ovs_unlock();
 return genlmsg_reply(reply, info);

unlock:
 ovs_unlock();
 return err;
}
