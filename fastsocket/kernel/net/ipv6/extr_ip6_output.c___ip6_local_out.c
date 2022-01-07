
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_4__ {int payload_len; } ;
struct TYPE_3__ {int dev; } ;


 int IPV6_MAXPLEN ;
 int NF_INET_LOCAL_OUT ;
 int PF_INET6 ;
 int dst_output ;
 int htons (int) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int nf_hook (int ,int ,struct sk_buff*,int *,int ,int ) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

int __ip6_local_out(struct sk_buff *skb)
{
 int len;

 len = skb->len - sizeof(struct ipv6hdr);
 if (len > IPV6_MAXPLEN)
  len = 0;
 ipv6_hdr(skb)->payload_len = htons(len);

 return nf_hook(PF_INET6, NF_INET_LOCAL_OUT, skb, ((void*)0), skb_dst(skb)->dev,
         dst_output);
}
