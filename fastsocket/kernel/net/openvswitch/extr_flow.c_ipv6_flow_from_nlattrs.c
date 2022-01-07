
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int * tll; int * sll; int target; } ;
struct TYPE_7__ {void* src; void* dst; } ;
struct TYPE_9__ {TYPE_3__ nd; TYPE_2__ tp; } ;
struct TYPE_6__ {int proto; } ;
struct sw_flow_key {TYPE_4__ ipv6; TYPE_1__ ip; } ;
struct ovs_key_udp {void* udp_src; void* udp_dst; } ;
struct ovs_key_tcp {void* tcp_src; void* tcp_dst; } ;
struct ovs_key_nd {int nd_tll; int nd_sll; int nd_target; } ;
struct ovs_key_icmpv6 {int icmpv6_code; int icmpv6_type; } ;
struct nlattr {int dummy; } ;
struct TYPE_10__ {int nd; int tp; } ;


 int EINVAL ;
 int ETH_ALEN ;



 int NDISC_NEIGHBOUR_ADVERTISEMENT ;
 int NDISC_NEIGHBOUR_SOLICITATION ;
 int OVS_KEY_ATTR_ICMPV6 ;
 int OVS_KEY_ATTR_ND ;
 int OVS_KEY_ATTR_TCP ;
 int OVS_KEY_ATTR_UDP ;
 int SW_FLOW_KEY_OFFSET (int ) ;
 void* htons (int ) ;
 TYPE_5__ ipv6 ;
 int memcpy (int *,int ,int) ;
 void* nla_data (struct nlattr const*) ;

__attribute__((used)) static int ipv6_flow_from_nlattrs(struct sw_flow_key *swkey, int *key_len,
      const struct nlattr *a[], u32 *attrs)
{
 const struct ovs_key_icmpv6 *icmpv6_key;
 const struct ovs_key_tcp *tcp_key;
 const struct ovs_key_udp *udp_key;

 switch (swkey->ip.proto) {
 case 129:
  if (!(*attrs & (1 << OVS_KEY_ATTR_TCP)))
   return -EINVAL;
  *attrs &= ~(1 << OVS_KEY_ATTR_TCP);

  *key_len = SW_FLOW_KEY_OFFSET(ipv6.tp);
  tcp_key = nla_data(a[OVS_KEY_ATTR_TCP]);
  swkey->ipv6.tp.src = tcp_key->tcp_src;
  swkey->ipv6.tp.dst = tcp_key->tcp_dst;
  break;

 case 128:
  if (!(*attrs & (1 << OVS_KEY_ATTR_UDP)))
   return -EINVAL;
  *attrs &= ~(1 << OVS_KEY_ATTR_UDP);

  *key_len = SW_FLOW_KEY_OFFSET(ipv6.tp);
  udp_key = nla_data(a[OVS_KEY_ATTR_UDP]);
  swkey->ipv6.tp.src = udp_key->udp_src;
  swkey->ipv6.tp.dst = udp_key->udp_dst;
  break;

 case 130:
  if (!(*attrs & (1 << OVS_KEY_ATTR_ICMPV6)))
   return -EINVAL;
  *attrs &= ~(1 << OVS_KEY_ATTR_ICMPV6);

  *key_len = SW_FLOW_KEY_OFFSET(ipv6.tp);
  icmpv6_key = nla_data(a[OVS_KEY_ATTR_ICMPV6]);
  swkey->ipv6.tp.src = htons(icmpv6_key->icmpv6_type);
  swkey->ipv6.tp.dst = htons(icmpv6_key->icmpv6_code);

  if (swkey->ipv6.tp.src == htons(NDISC_NEIGHBOUR_SOLICITATION) ||
      swkey->ipv6.tp.src == htons(NDISC_NEIGHBOUR_ADVERTISEMENT)) {
   const struct ovs_key_nd *nd_key;

   if (!(*attrs & (1 << OVS_KEY_ATTR_ND)))
    return -EINVAL;
   *attrs &= ~(1 << OVS_KEY_ATTR_ND);

   *key_len = SW_FLOW_KEY_OFFSET(ipv6.nd);
   nd_key = nla_data(a[OVS_KEY_ATTR_ND]);
   memcpy(&swkey->ipv6.nd.target, nd_key->nd_target,
          sizeof(swkey->ipv6.nd.target));
   memcpy(swkey->ipv6.nd.sll, nd_key->nd_sll, ETH_ALEN);
   memcpy(swkey->ipv6.nd.tll, nd_key->nd_tll, ETH_ALEN);
  }
  break;
 }

 return 0;
}
