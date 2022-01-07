
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vxlan_port {TYPE_3__* vs; } ;
struct vport {int dp; } ;
struct sk_buff {int local_df; int mark; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int fl4_src; int proto; int mark; int fl4_tos; int fl4_dst; } ;
typedef int fl ;
typedef int __be16 ;
struct TYPE_10__ {TYPE_2__* tun_key; } ;
struct TYPE_9__ {int sport; } ;
struct TYPE_8__ {TYPE_1__* sock; } ;
struct TYPE_7__ {int tun_flags; int tun_id; int ipv4_ttl; int ipv4_tos; int ipv4_dst; int ipv4_src; } ;
struct TYPE_6__ {int sk; } ;


 int EINVAL ;
 int IPPROTO_UDP ;
 int IP_DF ;
 TYPE_5__* OVS_CB (struct sk_buff*) ;
 int RT_TOS (int ) ;
 int TUNNEL_DONT_FRAGMENT ;
 int be64_to_cpu (int ) ;
 int htonl (int) ;
 int htons (int ) ;
 int inet_get_local_port_range (int*,int*) ;
 TYPE_4__* inet_sk (int ) ;
 int ip_route_output_key (struct net*,struct rtable**,struct flowi*) ;
 int ip_rt_put (struct rtable*) ;
 int memset (struct flowi*,int ,int) ;
 struct net* ovs_dp_get_net (int ) ;
 scalar_t__ unlikely (int) ;
 int vxlan_src_port (int,int,struct sk_buff*) ;
 struct vxlan_port* vxlan_vport (struct vport*) ;
 int vxlan_xmit_skb (struct net*,TYPE_3__*,struct rtable*,struct sk_buff*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int vxlan_tnl_send(struct vport *vport, struct sk_buff *skb)
{
 struct net *net = ovs_dp_get_net(vport->dp);
 struct vxlan_port *vxlan_port = vxlan_vport(vport);
 __be16 dst_port = inet_sk(vxlan_port->vs->sock->sk)->sport;
 struct rtable *rt;
 struct flowi fl;
 __be16 src_port;
 int port_min;
 int port_max;
 __be16 df;
 int err;

 if (unlikely(!OVS_CB(skb)->tun_key)) {
  err = -EINVAL;
  goto error;
 }


 memset(&fl, 0, sizeof(fl));
 fl.fl4_dst = OVS_CB(skb)->tun_key->ipv4_dst;
 fl.fl4_src = OVS_CB(skb)->tun_key->ipv4_src;
 fl.fl4_tos = RT_TOS(OVS_CB(skb)->tun_key->ipv4_tos);
 fl.mark = skb->mark;
 fl.proto = IPPROTO_UDP;

 err = ip_route_output_key(net, &rt, &fl);
 if (err)
  goto error;

 df = OVS_CB(skb)->tun_key->tun_flags & TUNNEL_DONT_FRAGMENT ?
  htons(IP_DF) : 0;

 skb->local_df = 1;

 inet_get_local_port_range(&port_min, &port_max);
 src_port = vxlan_src_port(port_min, port_max, skb);

 err = vxlan_xmit_skb(net, vxlan_port->vs, rt, skb,
        fl.fl4_src, OVS_CB(skb)->tun_key->ipv4_dst,
        OVS_CB(skb)->tun_key->ipv4_tos,
        OVS_CB(skb)->tun_key->ipv4_ttl, df,
        src_port, dst_port,
        htonl(be64_to_cpu(OVS_CB(skb)->tun_key->tun_id) << 8));
 if (err < 0)
  ip_rt_put(rt);
error:
 return err;
}
