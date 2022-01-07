
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ovs_dp_cmd_fill_info (struct datapath*,struct sk_buff*,int ,int ,int ,int ) ;
 int ovs_dp_cmd_msg_size () ;

__attribute__((used)) static struct sk_buff *ovs_dp_cmd_build_info(struct datapath *dp, u32 pid,
          u32 seq, u8 cmd)
{
 struct sk_buff *skb;
 int retval;

 skb = genlmsg_new(ovs_dp_cmd_msg_size(), GFP_KERNEL);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 retval = ovs_dp_cmd_fill_info(dp, skb, pid, seq, 0, cmd);
 if (retval < 0) {
  kfree_skb(skb);
  return ERR_PTR(retval);
 }
 return skb;
}
