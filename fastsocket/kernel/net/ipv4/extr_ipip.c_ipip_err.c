
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct iphdr {int saddr; int daddr; } ;
struct TYPE_4__ {scalar_t__ daddr; scalar_t__ ttl; } ;
struct TYPE_5__ {TYPE_1__ iph; } ;
struct ip_tunnel {int err_count; scalar_t__ err_time; TYPE_2__ parms; } ;
struct TYPE_6__ {int type; int code; } ;


 int ENOENT ;

 int const ICMP_EXC_TTL ;





 scalar_t__ IPTUNNEL_ERR_TIMEO ;
 int dev_net (int ) ;
 TYPE_3__* icmp_hdr (struct sk_buff*) ;
 int ipip_lock ;
 struct ip_tunnel* ipip_tunnel_lookup (int ,int ,int ) ;
 scalar_t__ jiffies ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ipip_err(struct sk_buff *skb, u32 info)
{





 struct iphdr *iph = (struct iphdr *)skb->data;
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct ip_tunnel *t;
 int err;

 switch (type) {
 default:
 case 131:
  return 0;

 case 133:
  switch (code) {
  case 129:
  case 130:

   return 0;
  case 132:

   return 0;
  default:




   break;
  }
  break;
 case 128:
  if (code != ICMP_EXC_TTL)
   return 0;
  break;
 }

 err = -ENOENT;

 read_lock(&ipip_lock);
 t = ipip_tunnel_lookup(dev_net(skb->dev), iph->daddr, iph->saddr);
 if (t == ((void*)0) || t->parms.iph.daddr == 0)
  goto out;

 err = 0;
 if (t->parms.iph.ttl == 0 && type == 128)
  goto out;

 if (time_before(jiffies, t->err_time + IPTUNNEL_ERR_TIMEO))
  t->err_count++;
 else
  t->err_count = 1;
 t->err_time = jiffies;
out:
 read_unlock(&ipip_lock);
 return err;
}
