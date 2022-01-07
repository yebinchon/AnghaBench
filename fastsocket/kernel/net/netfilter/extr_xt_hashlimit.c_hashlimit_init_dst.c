
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int mode; int srcmask; int dstmask; } ;
struct xt_hashlimit_htable {int family; TYPE_3__ cfg; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_7__ {int src; int dst; } ;
struct TYPE_6__ {void* src; void* dst; } ;
struct dsthash_dst {void* dst_port; void* src_port; TYPE_2__ ip6; TYPE_1__ ip; } ;
typedef int _ports ;
typedef void* __be16 ;
struct TYPE_10__ {int protocol; int saddr; int daddr; } ;
struct TYPE_9__ {int nexthdr; int saddr; int daddr; } ;


 int BUG () ;







 int XT_HASHLIMIT_HASH_DIP ;
 int XT_HASHLIMIT_HASH_DPT ;
 int XT_HASHLIMIT_HASH_SIP ;
 int XT_HASHLIMIT_HASH_SPT ;
 int hashlimit_ipv6_mask (int ,int ) ;
 TYPE_5__* ip_hdr (struct sk_buff const*) ;
 TYPE_4__* ipv6_hdr (struct sk_buff const*) ;
 unsigned int ipv6_skip_exthdr (struct sk_buff const*,int,int*) ;
 void* maskl (int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct dsthash_dst*,int ,int) ;
 void** skb_header_pointer (struct sk_buff const*,unsigned int,int,void***) ;

__attribute__((used)) static int
hashlimit_init_dst(const struct xt_hashlimit_htable *hinfo,
     struct dsthash_dst *dst,
     const struct sk_buff *skb, unsigned int protoff)
{
 __be16 _ports[2], *ports;
 u8 nexthdr;

 memset(dst, 0, sizeof(*dst));

 switch (hinfo->family) {
 case 129:
  if (hinfo->cfg.mode & XT_HASHLIMIT_HASH_DIP)
   dst->ip.dst = maskl(ip_hdr(skb)->daddr,
                 hinfo->cfg.dstmask);
  if (hinfo->cfg.mode & XT_HASHLIMIT_HASH_SIP)
   dst->ip.src = maskl(ip_hdr(skb)->saddr,
                 hinfo->cfg.srcmask);

  if (!(hinfo->cfg.mode &
        (XT_HASHLIMIT_HASH_DPT | XT_HASHLIMIT_HASH_SPT)))
   return 0;
  nexthdr = ip_hdr(skb)->protocol;
  break;
 default:
  BUG();
  return 0;
 }

 switch (nexthdr) {
 case 132:
 case 131:
 case 130:
 case 133:
 case 134:
  ports = skb_header_pointer(skb, protoff, sizeof(_ports),
        &_ports);
  break;
 default:
  _ports[0] = _ports[1] = 0;
  ports = _ports;
  break;
 }
 if (!ports)
  return -1;
 if (hinfo->cfg.mode & XT_HASHLIMIT_HASH_SPT)
  dst->src_port = ports[0];
 if (hinfo->cfg.mode & XT_HASHLIMIT_HASH_DPT)
  dst->dst_port = ports[1];
 return 0;
}
