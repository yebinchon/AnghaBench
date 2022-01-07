
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ vlan_tci; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct dp_upcall_info {int pid; struct nlattr* userdata; int key; int cmd; } ;


 int EFBIG ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int OVS_PACKET_ATTR_KEY ;
 int OVS_PACKET_ATTR_PACKET ;
 int OVS_PACKET_ATTR_USERDATA ;
 scalar_t__ USHORT_MAX ;
 int __nla_put (struct sk_buff*,int ,int ,int ) ;
 struct nlattr* __nla_reserve (struct sk_buff*,int ,int ) ;
 struct sk_buff* __vlan_put_tag (struct sk_buff*,int ) ;
 int dp_packet_genl_family ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_unicast (struct net*,struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nla_attr_size (int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int ovs_flow_to_nlattrs (int ,struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_copy_and_csum_dev (struct sk_buff*,int ) ;
 int upcall_msg_size (struct sk_buff*,struct nlattr*) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static int queue_userspace_packet(struct net *net, int dp_ifindex,
      struct sk_buff *skb,
      const struct dp_upcall_info *upcall_info)
{
 struct ovs_header *upcall;
 struct sk_buff *nskb = ((void*)0);
 struct sk_buff *user_skb;
 struct nlattr *nla;
 int err;

 if (vlan_tx_tag_present(skb)) {
  nskb = skb_clone(skb, GFP_ATOMIC);
  if (!nskb)
   return -ENOMEM;

  nskb = __vlan_put_tag(nskb, vlan_tx_tag_get(nskb));
  if (!nskb)
   return -ENOMEM;

  nskb->vlan_tci = 0;
  skb = nskb;
 }

 if (nla_attr_size(skb->len) > USHORT_MAX) {
  err = -EFBIG;
  goto out;
 }

 user_skb = genlmsg_new(upcall_msg_size(skb, upcall_info->userdata), GFP_ATOMIC);
 if (!user_skb) {
  err = -ENOMEM;
  goto out;
 }

 upcall = genlmsg_put(user_skb, 0, 0, &dp_packet_genl_family,
        0, upcall_info->cmd);
 upcall->dp_ifindex = dp_ifindex;

 nla = nla_nest_start(user_skb, OVS_PACKET_ATTR_KEY);
 ovs_flow_to_nlattrs(upcall_info->key, user_skb);
 nla_nest_end(user_skb, nla);

 if (upcall_info->userdata)
  __nla_put(user_skb, OVS_PACKET_ATTR_USERDATA,
     nla_len(upcall_info->userdata),
     nla_data(upcall_info->userdata));

 nla = __nla_reserve(user_skb, OVS_PACKET_ATTR_PACKET, skb->len);

 skb_copy_and_csum_dev(skb, nla_data(nla));

 genlmsg_end(user_skb, upcall);
 err = genlmsg_unicast(net, user_skb, upcall_info->pid);

out:
 kfree_skb(nskb);
 return err;
}
