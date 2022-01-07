
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct TYPE_7__ {int proto; int frag; int ttl; int tos; } ;
struct TYPE_5__ {int dst; int src; } ;
struct TYPE_6__ {int label; TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv6; } ;
struct sk_buff {int * data; } ;
struct ipv6hdr {int daddr; int saddr; int hop_limit; int nexthdr; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_8__ {int label; } ;


 int EINVAL ;
 int IPV6_FLOWINFO_FLOWLABEL ;
 int NEXTHDR_NONE ;
 int OVS_FRAG_TYPE_FIRST ;
 int OVS_FRAG_TYPE_LATER ;
 int SW_FLOW_KEY_OFFSET (int ) ;
 int check_header (struct sk_buff*,unsigned int) ;
 int htonl (int ) ;
 int htons (int) ;
 TYPE_4__ ipv6 ;
 int ipv6_get_dsfield (struct ipv6hdr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr_fragoff (struct sk_buff*,int,int *,int*) ;
 unsigned int skb_network_offset (struct sk_buff*) ;
 int skb_set_transport_header (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int parse_ipv6hdr(struct sk_buff *skb, struct sw_flow_key *key,
    int *key_lenp)
{
 unsigned int nh_ofs = skb_network_offset(skb);
 unsigned int nh_len;
 int payload_ofs;
 struct ipv6hdr *nh;
 uint8_t nexthdr;
 __be16 frag_off;
 int err;

 *key_lenp = SW_FLOW_KEY_OFFSET(ipv6.label);

 err = check_header(skb, nh_ofs + sizeof(*nh));
 if (unlikely(err))
  return err;

 nh = ipv6_hdr(skb);
 nexthdr = nh->nexthdr;
 payload_ofs = (u8 *)(nh + 1) - skb->data;

 key->ip.proto = NEXTHDR_NONE;
 key->ip.tos = ipv6_get_dsfield(nh);
 key->ip.ttl = nh->hop_limit;
 key->ipv6.label = *(__be32 *)nh & htonl(IPV6_FLOWINFO_FLOWLABEL);
 key->ipv6.addr.src = nh->saddr;
 key->ipv6.addr.dst = nh->daddr;

 payload_ofs = ipv6_skip_exthdr_fragoff(skb, payload_ofs, &nexthdr, &frag_off);
 if (unlikely(payload_ofs < 0))
  return -EINVAL;

 if (frag_off) {
  if (frag_off & htons(~0x7))
   key->ip.frag = OVS_FRAG_TYPE_LATER;
  else
   key->ip.frag = OVS_FRAG_TYPE_FIRST;
 }

 nh_len = payload_ofs - nh_ofs;
 skb_set_transport_header(skb, nh_ofs + nh_len);
 key->ip.proto = nexthdr;
 return nh_len;
}
