
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int skb_mark; int priority; } ;
struct TYPE_6__ {TYPE_1__ phy; } ;
struct sw_flow_actions {TYPE_2__ key; int sf_acts; } ;
struct sw_flow {TYPE_2__ key; int sf_acts; } ;
struct sk_buff {int sk; int mark; int priority; int protocol; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct ovs_header* userhdr; } ;
struct ethhdr {int h_proto; } ;
struct datapath {int dummy; } ;
struct TYPE_7__ {struct sw_flow_actions* flow; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_P_802_2 ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sw_flow_actions*) ;
 scalar_t__ NET_IP_ALIGN ;
 TYPE_4__* OVS_CB (struct sk_buff*) ;
 size_t OVS_PACKET_ATTR_ACTIONS ;
 size_t OVS_PACKET_ATTR_KEY ;
 size_t OVS_PACKET_ATTR_PACKET ;
 int PTR_ERR (struct sw_flow_actions*) ;
 struct sk_buff* __dev_alloc_skb (scalar_t__,int ) ;
 int __skb_put (struct sk_buff*,int) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 struct datapath* get_dp (int ,int ) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int nla_len (struct nlattr*) ;
 int nla_memcpy (int ,struct nlattr*,int) ;
 int ntohs (int ) ;
 int ovs_execute_actions (struct datapath*,struct sk_buff*) ;
 struct sw_flow_actions* ovs_flow_actions_alloc (int) ;
 struct sw_flow_actions* ovs_flow_alloc () ;
 int ovs_flow_extract (struct sk_buff*,int,TYPE_2__*,int*) ;
 int ovs_flow_free (struct sw_flow_actions*) ;
 int ovs_flow_metadata_from_nlattrs (struct sw_flow_actions*,int,struct nlattr*) ;
 int rcu_assign_pointer (int ,struct sw_flow_actions*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int sock_net (int ) ;
 int validate_and_copy_actions (struct nlattr*,TYPE_2__*,int ,struct sw_flow_actions**) ;

__attribute__((used)) static int ovs_packet_cmd_execute(struct sk_buff *skb, struct genl_info *info)
{
 struct ovs_header *ovs_header = info->userhdr;
 struct nlattr **a = info->attrs;
 struct sw_flow_actions *acts;
 struct sk_buff *packet;
 struct sw_flow *flow;
 struct datapath *dp;
 struct ethhdr *eth;
 int len;
 int err;
 int key_len;

 err = -EINVAL;
 if (!a[OVS_PACKET_ATTR_PACKET] || !a[OVS_PACKET_ATTR_KEY] ||
     !a[OVS_PACKET_ATTR_ACTIONS])
  goto err;

 len = nla_len(a[OVS_PACKET_ATTR_PACKET]);
 packet = __dev_alloc_skb(NET_IP_ALIGN + len, GFP_KERNEL);
 err = -ENOMEM;
 if (!packet)
  goto err;
 skb_reserve(packet, NET_IP_ALIGN);

 nla_memcpy(__skb_put(packet, len), a[OVS_PACKET_ATTR_PACKET], len);

 skb_reset_mac_header(packet);
 eth = eth_hdr(packet);




 if (ntohs(eth->h_proto) >= 1536)
  packet->protocol = eth->h_proto;
 else
  packet->protocol = htons(ETH_P_802_2);


 flow = ovs_flow_alloc();
 err = PTR_ERR(flow);
 if (IS_ERR(flow))
  goto err_kfree_skb;

 err = ovs_flow_extract(packet, -1, &flow->key, &key_len);
 if (err)
  goto err_flow_free;

 err = ovs_flow_metadata_from_nlattrs(flow, key_len, a[OVS_PACKET_ATTR_KEY]);
 if (err)
  goto err_flow_free;
 acts = ovs_flow_actions_alloc(nla_len(a[OVS_PACKET_ATTR_ACTIONS]));
 err = PTR_ERR(acts);
 if (IS_ERR(acts))
  goto err_flow_free;

 err = validate_and_copy_actions(a[OVS_PACKET_ATTR_ACTIONS], &flow->key, 0, &acts);
 rcu_assign_pointer(flow->sf_acts, acts);
 if (err)
  goto err_flow_free;

 OVS_CB(packet)->flow = flow;
 packet->priority = flow->key.phy.priority;
 packet->mark = flow->key.phy.skb_mark;

 rcu_read_lock();
 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 err = -ENODEV;
 if (!dp)
  goto err_unlock;

 local_bh_disable();
 err = ovs_execute_actions(dp, packet);
 local_bh_enable();
 rcu_read_unlock();

 ovs_flow_free(flow);
 return err;

err_unlock:
 rcu_read_unlock();
err_flow_free:
 ovs_flow_free(flow);
err_kfree_skb:
 kfree_skb(packet);
err:
 return err;
}
