
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {scalar_t__ dev; } ;
struct TYPE_11__ {int key; } ;
struct TYPE_12__ {TYPE_4__ gre; scalar_t__ all; } ;
struct TYPE_13__ {TYPE_5__ u; } ;
struct TYPE_8__ {int key; } ;
struct TYPE_9__ {TYPE_1__ gre; scalar_t__ all; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ src; TYPE_3__ dst; } ;
struct net {int dummy; } ;
struct gre_hdr_pptp {scalar_t__ version; int call_id; int protocol; } ;
struct gre_hdr {scalar_t__ version; int call_id; int protocol; } ;
typedef int _grehdr ;
typedef int __be16 ;
struct TYPE_14__ {scalar_t__ dev; } ;


 scalar_t__ GRE_PROTOCOL_PPTP ;
 scalar_t__ GRE_VERSION_PPTP ;
 struct net* dev_net (scalar_t__) ;
 int gre_keymap_lookup (struct net*,struct nf_conntrack_tuple*) ;
 scalar_t__ ntohs (int ) ;
 int pr_debug (char*) ;
 TYPE_7__* skb_dst (struct sk_buff const*) ;
 struct gre_hdr_pptp* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct gre_hdr_pptp*) ;

__attribute__((used)) static bool gre_pkt_to_tuple(const struct sk_buff *skb, unsigned int dataoff,
        struct nf_conntrack_tuple *tuple)
{
 struct net *net = dev_net(skb->dev ? skb->dev : skb_dst(skb)->dev);
 const struct gre_hdr_pptp *pgrehdr;
 struct gre_hdr_pptp _pgrehdr;
 __be16 srckey;
 const struct gre_hdr *grehdr;
 struct gre_hdr _grehdr;


 grehdr = skb_header_pointer(skb, dataoff, sizeof(_grehdr), &_grehdr);
 if (!grehdr || grehdr->version != GRE_VERSION_PPTP) {

  tuple->src.u.all = 0;
  tuple->dst.u.all = 0;
  return 1;
 }


 pgrehdr = skb_header_pointer(skb, dataoff, 8, &_pgrehdr);
 if (!pgrehdr)
  return 1;

 if (ntohs(grehdr->protocol) != GRE_PROTOCOL_PPTP) {
  pr_debug("GRE_VERSION_PPTP but unknown proto\n");
  return 0;
 }

 tuple->dst.u.gre.key = pgrehdr->call_id;
 srckey = gre_keymap_lookup(net, tuple);
 tuple->src.u.gre.key = srckey;

 return 1;
}
