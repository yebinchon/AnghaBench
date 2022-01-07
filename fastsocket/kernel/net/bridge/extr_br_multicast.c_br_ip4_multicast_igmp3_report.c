
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct igmpv3_report {int ngrec; } ;
struct igmpv3_grec {int grec_type; int grec_nsrcs; int grec_mca; } ;
typedef int __be32 ;


 int EINVAL ;






 int br_ip4_multicast_add_group (struct net_bridge*,struct net_bridge_port*,int ) ;
 struct igmpv3_report* igmpv3_report_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
      struct net_bridge_port *port,
      struct sk_buff *skb)
{
 struct igmpv3_report *ih;
 struct igmpv3_grec *grec;
 int i;
 int len;
 int num;
 int type;
 int err = 0;
 __be32 group;

 if (!pskb_may_pull(skb, sizeof(*ih)))
  return -EINVAL;

 ih = igmpv3_report_hdr(skb);
 num = ntohs(ih->ngrec);
 len = sizeof(*ih);

 for (i = 0; i < num; i++) {
  len += sizeof(*grec);
  if (!pskb_may_pull(skb, len))
   return -EINVAL;

  grec = (void *)(skb->data + len - sizeof(*grec));
  group = grec->grec_mca;
  type = grec->grec_type;

  len += ntohs(grec->grec_nsrcs) * 4;
  if (!pskb_may_pull(skb, len))
   return -EINVAL;


  switch (type) {
  case 128:
  case 129:
  case 130:
  case 131:
  case 133:
  case 132:
   break;

  default:
   continue;
  }

  err = br_ip4_multicast_add_group(br, port, group);
  if (err)
   break;
 }

 return err;
}
